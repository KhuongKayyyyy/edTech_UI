class Course {
  static int _idCounter = 0;
  final int id;
  final String name;
  final String imgUrl;
  final int hour;
  final String overview;

  Course({
    required this.name,
    required this.imgUrl,
    required this.hour,
    required this.overview,
  }) : id = _idCounter++;

  @override
  String toString() {
    return 'Course{id: $id, name: $name, imgUrl: $imgUrl, hour: $hour, overview: $overview}';
  }
}
