import 'package:flutter/material.dart';
import 'package:maharah_project/models/course_details_model.dart';
import 'package:maharah_project/models/trending_course_model.dart';
import 'package:maharah_project/router_app.dart';
import 'package:maharah_project/ui/widgets/section_title.dart';

class HorizontalListSectionCard extends StatelessWidget {
  const HorizontalListSectionCard({
    super.key,
    required this.trendingCourseModel,
  });

  final TrendingCoursesModel trendingCourseModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 32),
          child: SectionTitle(title: 'Trending'),
        ),
        SizedBox(
          width: double.infinity,
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: trendingCourseModel.images.length,
            padding: const EdgeInsetsDirectional.only(start: 16),
            itemBuilder: (context, index) {
              final courseDetailsData = CourseDetailsModel(
                description: trendingCourseModel.icons[index],
                id: trendingCourseModel.ids[index],
                image: trendingCourseModel.images[index],
                name: trendingCourseModel.names[index],
                price: trendingCourseModel.prices[index],
                icon: trendingCourseModel.icons[index],
              );
              return Padding(
                padding: const EdgeInsetsDirectional.only(
                  end: 16,
                ),
                child: InkWell(
                  onTap: () async {
                    Navigator.of(context).pushNamed(
                      RouteGenerator.courseDetailsScreen,
                      arguments: courseDetailsData,
                    );
                  },
                  child: _DevCoursesCard(
                    icon: trendingCourseModel.icons[index],
                    imageCard: trendingCourseModel.images[index],
                    name: trendingCourseModel.names[index],
                  ),
                ),
              );
            },
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
    required this.icon,
  });

  final String imageCard;
  final String name;
  final String icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.circular(24),
      child: Card(
        margin: EdgeInsets.zero,
        color: theme.colorScheme.onBackground,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Image.asset(
                  imageCard,
                  width: MediaQuery.of(context).size.width / 2,
                  height: 100,
                  fit: BoxFit.fill,
                ),
                Expanded(
                  child: Container(
                    color: theme.colorScheme.onBackground,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 24) +
                          const EdgeInsets.only(top: 8),
                      child: Text(
                        name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            PositionedDirectional(
              start: 16,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24)),
                child: Center(
                  child: Image.asset(
                    icon,
                    width: 36,
                    height: 36,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
