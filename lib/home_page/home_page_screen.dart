import 'package:flutter/material.dart';
import 'package:maharah_project/user_profile/user_profile_screen.dart';
import '../widgets/MostTakenList.dart';
import '../widgets/TrendingItems.dart';

class HomePageScreen extends StatelessWidget {
  static const route = "/";
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 30, 20),
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 3,
                      child: const Text(
                        "Hello,\nAbdaraheem",
                        style:
                            TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(72),
                        color: Colors.grey,
                      ),
                      child: InkWell(
                        onTap: (){Navigator.of(context).pushNamed(UserProfileScreen.route);},
                        child: Image.asset(
                          fit: BoxFit.fill,
                          'assets/images/user_profile_image.png',
                          width: 45,
                          height: 45,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 20, 20),
                child: Row(
                  children: [
                    Text("Trending",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text(
                      "See all",
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                  ],
                ),
              ),
              const TrendingItems(
                data: {
                  "Texts": [
                    "Chat with smartest AI now",
                    "HTML welcome from blabla",
                    "Chat gpt is the future",
                    "HTML welcome from Test 2",
                  ],
                  "CoversPath": [
                    "assets/images/PosterCovers/defaultCover.png",
                    "assets/images/PosterCovers/2.jpg",
                    "assets/images/PosterCovers/defaultCover.png",
                    "assets/images/PosterCovers/2.jpg",
                  ],
                  "IconsPath": [
                    "assets/images/PosterIcons/defaultIcon.png",
                    "assets/images/PosterIcons/html.png",
                    "assets/images/PosterIcons/gpt.png",
                    "assets/images/PosterIcons/html.png",
                  ]
                },
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 20, 20),
                child: Row(
                  children: [
                    Text("Most Taken",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text(
                      "See all",
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height/1.3,
                width: MediaQuery.sizeOf(context).width,
                child: const Flex(direction: Axis.vertical, children: [
                  MostTakenList(
                    data: {
                      "Texts": [
                        "Ux/UI Visual Design",
                        "Photography Basics - 101",
                        "Basics of Logical Thinking",
                        "Introduction TO Flutter",
                        "Ux/UI Visual Design test 2",
                        "Photography Basics - 101 test",
                        "Basics of Logical Thinking test",
                        "Introduction TO Flutter test",
                        "Ux/UI Visual Design test 2",
                        "Photography Basics - 101 test",
                        "Basics of Logical Thinking test",
                      ],
                      "ImagesPath": [
                        "assets/images/MostTakenImages/1.jpg",
                        "assets/images/MostTakenImages/2.png",
                        "assets/images/MostTakenImages/defaultImage.png",
                        "assets/images/MostTakenImages/flutter.png",
                        "assets/images/MostTakenImages/2.png",
                        "assets/images/MostTakenImages/defaultImage.png",
                        "assets/images/MostTakenImages/flutter.png",
                        "assets/images/MostTakenImages/2.png",
                        "assets/images/MostTakenImages/defaultImage.png",
                        "assets/images/MostTakenImages/flutter.png",
                      ]
                    },
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
