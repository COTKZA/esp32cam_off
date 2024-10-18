import os
import cv2
import mysql.connector
from datetime import datetime
import time
import threading

# กำหนดเส้นทางโฟลเดอร์
uploads_dir = 'uploads/'
videos_dir = 'videos/'

# ตัวแปรสำหรับควบคุมการทำงาน
running = True

def create_video(image_files):
    # กำหนดชื่อไฟล์วิดีโอ
    video_name = f"video_{datetime.now().strftime('%Y%m%d_%H%M%S')}.mp4"
    video_path = os.path.join(videos_dir, video_name)

    # กำหนด codec และสร้าง VideoWriter
    fourcc = cv2.VideoWriter_fourcc(*'mp4v')
    first_image = cv2.imread(image_files[0])
    height, width, _ = first_image.shape
    video_writer = cv2.VideoWriter(video_path, fourcc, 24, (width, height))

    # เพิ่มภาพลงในวิดีโอ
    for image_file in image_files:
        img = cv2.imread(image_file)
        video_writer.write(img)

    video_writer.release()
    return video_path

def save_video_to_db(video_name, video_path, cursor, db):
    now = datetime.now()
    date = now.date()
    time = now.time()
    cursor.execute("""
        INSERT INTO videos (name, path_file, date, time) 
        VALUES (%s, %s, %s, %s)
    """, (video_name, video_path, date, time))
    db.commit()

def get_unprocessed_images(cursor):
    # ดึงภาพที่ยังไม่ถูกใช้งานในการสร้างวิดีโอ
    cursor.execute("SELECT name, path_file FROM images WHERE use_images = 0 GROUP BY name LIMIT 60")
    return cursor.fetchall()

def mark_images_as_used(image_names, cursor, db):
    # อัพเดตสถานะ use_images ของภาพที่ถูกใช้งาน
    cursor.execute("UPDATE images SET use_images = 1 WHERE name IN (%s)" % ', '.join(['%s'] * len(image_names)), image_names)
    db.commit()

def stop_process():
    global running
    input("กด Enter เพื่อหยุดการทำงาน...")
    running = False

def restart_program():
    # print("เริ่มโปรแกรมใหม่...")
    time.sleep(5)  # รอ 1 วินาทีก่อนรันใหม่
    main()  # เรียก main ใหม่

def main():
    # ตั้งค่าการเชื่อมต่อ MySQL
    db = mysql.connector.connect(
        host='localhost',       # แทนที่ด้วย host ของคุณ
        user='root',           # แทนที่ด้วยชื่อผู้ใช้ของคุณ
        password='',           # แทนที่ด้วยรหัสผ่านของคุณ
        database='esp32cam_video'  # แทนที่ด้วยชื่อฐานข้อมูลของคุณ
    )

    cursor = db.cursor()

    while running:  # ลูปเพื่อทำงานต่อไปเรื่อย ๆ
        # ดึงชื่อไฟล์จากฐานข้อมูล
        unprocessed_images = get_unprocessed_images(cursor)
        
        # ตรวจสอบว่ามีรูปภาพเพียงพอหรือไม่
        if len(unprocessed_images) < 60:
            print(f"\033[93mไม่พบรูปภาพเพียงพอในการสร้างวิดีโอ (มี {len(unprocessed_images)} รูป ต้องมี 60 รูป)\033[0m")
            cursor.close()
            db.close()
            restart_program()  # เริ่มโปรแกรมใหม่
            return  # ออกจากฟังก์ชัน main เพื่อให้โปรแกรมเริ่มใหม่

        # สร้างวิดีโอจาก 60 รูป
        image_paths = [image[1] for image in unprocessed_images]  # ใช้ 60 รูปแรก
        video_path = create_video(image_paths)
        video_name = os.path.basename(video_path)

        # บันทึกข้อมูลวิดีโอในฐานข้อมูล
        save_video_to_db(video_name, video_path, cursor, db)

        # อัพเดตสถานะของภาพที่ถูกใช้งาน
        image_names = [image[0] for image in unprocessed_images]  # ดึงชื่อภาพ
        mark_images_as_used(image_names, cursor, db)

        print(f"\033[92mสร้างวิดีโอ: {video_name} และบันทึกลงในฐานข้อมูล\033[0m")

        time.sleep(5)  # รอ 5 วินาทีก่อนเริ่มรอบถัดไป

    # ปิดการเชื่อมต่อกับฐานข้อมูลเมื่อสิ้นสุดการทำงาน
    cursor.close()
    db.close()

if __name__ == "__main__":
    # สร้างและเริ่ม thread สำหรับหยุดการทำงาน
    stop_thread = threading.Thread(target=stop_process)
    stop_thread.start()
    
    main()  
