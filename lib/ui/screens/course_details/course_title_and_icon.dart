import 'package:flutter/material.dart';
import 'package:maharah_project/models/course_details_model.dart';

class CourseTitleAndIcon extends StatelessWidget {
  final CourseDetailsModel courseDetails;

  const CourseTitleAndIcon({Key? key, required this.courseDetails})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Text(
                courseDetails.name,
                style: const TextStyle(fontSize: 24.0),
                overflow: TextOverflow.fade,
              ),
            ),
            IconButton(
              icon: courseDetails.icon == null
                  ? const SizedBox()
                  : Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24)),
                      child: Center(
                        child: Image.asset(courseDetails.icon!,
                            width: 32, height: 32),
                      ),
                    ),
              onPressed: () {},
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('WA0043', style: TextStyle(color: theme.hintColor)),
              Text(
                '${courseDetails.price.toString()} LYD',
                style: theme.textTheme.titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
