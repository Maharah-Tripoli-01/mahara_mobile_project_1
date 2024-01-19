class MostTakenCoursesModel {
  MostTakenCoursesModel(
      {required this.images,
      required this.names,
      required this.prices,
      required this.descriptions,
      required this.ids});

  final List<String> images;
  final List<String> names;
  final List<double> prices;
  final List<String> descriptions;
  final List<int> ids;
}

abstract class MostTakenCourseInfo {
  static const images = [
    'assets/image/design-course.jpg',
    'assets/image/photography.jpeg',
    'assets/image/tech-course.jpg',
    'assets/image/man-tech-course.jpg',
  ];

  static const ids = [
    1,
    2,
    3,
    4,
  ];

  static const names = [
    'UI/UX Visual Design',
    'Photography Basics - 101',
    'Basics of Logical Thinking',
    'Programming Basics',
  ];

  static const price = [
    300.0,
    600.0,
    800.0,
    500.0
  ];
  static const descriptions = [
    'HTML, which stands for HyperText Markup Language,',
    'JavaScript is a powerful, high-level,',
    'Java is a widely-used, object-oriented programming',
    'CSS, which stands for Cascading Style Sheets',
  ];
}
