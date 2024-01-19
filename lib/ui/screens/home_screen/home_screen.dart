import 'package:flutter/material.dart';
import 'package:maharah_project/models/most_taken_course_model.dart';
import 'package:maharah_project/models/trending_course_model.dart';
import 'package:maharah_project/router_app.dart';
import 'package:maharah_project/ui/screens/home_screen/vertical_list_section_card.dart';
import 'horizontal_list_section_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final router = Navigator.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          router.pushNamed(RouteGenerator.cartScreen);
        },
        backgroundColor: theme.colorScheme.secondary,
        elevation: 0,
        clipBehavior: Clip.hardEdge,
        shape: const RoundedRectangleBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(34)), // Adjust the radius here
        ),
        child: Icon(
          Icons.shopping_cart_outlined,
          color: theme.colorScheme.background,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Hello,\n',
                            style: theme.textTheme.headlineMedium
                                ?.copyWith(fontWeight: FontWeight.w600),
                          ),
                          TextSpan(
                            text: 'Abdalraheem',
                            style: theme.textTheme.headlineMedium
                                ?.copyWith(fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      child: ClipRRect(
                        clipBehavior: Clip.hardEdge,
                        borderRadius: BorderRadius.circular(56),
                        child: Image.asset(
                          'assets/image/profile_image.webp',
                          height: 54,
                          width: 54,
                        ),
                      ),
                      onTap: () {
                        router.pushNamed(
                          RouteGenerator.userProfileScreen,
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              HorizontalListSectionCard(
                trendingCourseModel: TrendingCoursesModel(
                  icons: TrendingCourseInfo.icons,
                  names: TrendingCourseInfo.names,
                  ids: TrendingCourseInfo.ids,
                  images: TrendingCourseInfo.images,
                  prices: TrendingCourseInfo.price,
                  descriptions: TrendingCourseInfo.descriptions,
                ),
              ),
              const SizedBox(height: 32),
              VerticalListSectionCard(
                mostTakenCourseModel: MostTakenCoursesModel(
                  images: MostTakenCourseInfo.images,
                  ids: MostTakenCourseInfo.ids,
                  names: MostTakenCourseInfo.names,
                  prices: MostTakenCourseInfo.price,
                  descriptions: MostTakenCourseInfo.descriptions,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
