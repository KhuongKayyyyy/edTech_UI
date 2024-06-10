class Course {
  static int _idCounter = 0;
  final int id;
  final String name;
  final String imgUrl;
  final int hour;
  final String overview;
  final int price;

  Course({
    required this.name,
    required this.imgUrl,
    required this.hour,
    required this.overview,
    required this.price,
  }) : id = _idCounter++;

  @override
  String toString() {
    return 'Course{id: $id, name: $name, imgUrl: $imgUrl, hour: $hour, overview: $overview, price:: $price}';
  }
}
