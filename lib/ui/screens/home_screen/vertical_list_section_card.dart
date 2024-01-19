import 'package:flutter/material.dart';
import 'package:maharah_project/models/course_details_model.dart';
import 'package:maharah_project/models/most_taken_course_model.dart';
import 'package:maharah_project/router_app.dart';
import 'package:maharah_project/ui/widgets/section_title.dart';

class VerticalListSectionCard extends StatelessWidget {
  const VerticalListSectionCard({
    super.key,
    required this.mostTakenCourseModel,
  });

  final MostTakenCoursesModel mostTakenCourseModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 32),
          child: SectionTitle(title: 'Most Taken'),
        ),
        SizedBox(
          width: double.infinity,
          child: Column(
            children: List.generate(
              mostTakenCourseModel.images.length,
              (index) {
                final courseDetailsData = CourseDetailsModel(
                  description: mostTakenCourseModel.descriptions[index],
                  id:mostTakenCourseModel.ids[index],
                  image: mostTakenCourseModel.images[index],
                  name: mostTakenCourseModel.names[index],
                  price: mostTakenCourseModel.prices[index],
                );
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        RouteGenerator.courseDetailsScreen,
                        arguments: courseDetailsData,
                      );
                    },
                    child: _DevCoursesCard(
                      imageCard: mostTakenCourseModel.images[index],
                      name: mostTakenCourseModel.names[index],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _DevCoursesCard extends StatelessWidget {
  const _DevCoursesCard({
    required this.imageCard,
    required this.name,
  });

  final String imageCard;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          imageCard,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(name),
    );
  }
}
