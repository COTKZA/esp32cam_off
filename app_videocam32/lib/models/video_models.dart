class Video {
  final int id;
  final String name;
  final String pathFile;
  final String date;
  final String time;

  Video({
    required this.id,
    required this.name,
    required this.pathFile,
    required this.date,
    required this.time,
  });

  // Factory method to create a Video object from JSON
  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      id: int.parse(json['id'].toString()), // Ensuring id is parsed as int
      name: json['name'],
      pathFile: json['path_file'],
      date: json['date'],
      time: json['time'],
    );
  }
}
