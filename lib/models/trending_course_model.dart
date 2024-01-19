class TrendingCoursesModel {
  TrendingCoursesModel(
      {required this.names,
      required this.icons,
      required this.images,
      required this.prices,
      required this.descriptions,
      required this.ids});

  final List<String> names;
  final List<String> icons;
  final List<String> images;
  final List<double> prices;
  final List<String> descriptions;
  final List<int> ids;
}

abstract class TrendingCourseInfo {
  static const images = [
    'assets/image/images.jpeg',
    'assets/image/images1.jpeg',
    'assets/image/images2.jpeg',
    'assets/image/images.jpeg'
  ];
  static const icons = [
    'assets/image/css-3.png',
    'assets/image/html-5.png',
    'assets/image/java.png',
    'assets/image/python.png'
  ];
  static const names = [
    'Chat with the Smarteset Ai now',
    'HTML welcome from',
    'JavaScripts',
    'Python'
  ];

  static const ids = [
    1,
    2,
    3,
    4,
  ];

  static const price = [
    100.0,
    300.0,
    400.0,
    500.0,
  ];
  static const descriptions = [
    'HTML, which stands for HyperText Markup Language,',
    'JavaScript is a powerful, high-level,',
    'Java is a widely-used, object-oriented programming',
    'CSS, which stands for Cascading Style Sheets',
  ];
}
