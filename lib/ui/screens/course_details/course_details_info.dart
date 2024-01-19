import 'package:flutter/material.dart';
import 'package:maharah_project/models/course_details_model.dart';

class CourseDetailsInfo extends StatelessWidget {
  final CourseDetailsModel courseDetails;
  final ThemeData theme;

  const CourseDetailsInfo(
      {Key? key, required this.courseDetails, required this.theme})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Product Description',
          style: theme.textTheme.bodyLarge,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          courseDetails.image,
          style: theme.textTheme.bodyMedium?.copyWith(color: theme.hintColor),
        ),
      ],
    );
  }
}
