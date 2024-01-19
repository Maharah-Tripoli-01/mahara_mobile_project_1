class CourseDetailsModel {
  CourseDetailsModel({
    required this.image,
    required this.name,
    required this.price,
    required this.description,
    this.icon,
    required this.id,
  });

  final String image;
  final String name;
  final double price;
  final String description;
  final int id ;
  final String? icon;


}
