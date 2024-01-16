
import 'package:flutter/material.dart';

class TrendingItems extends StatelessWidget {
  final Map<String, List<String>> data;

  const TrendingItems({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery
          .sizeOf(context)
          .width,
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.containsKey("Texts") ? data["Texts"]!.length : 0,
        itemBuilder: (context, int index) {
          return Stack(
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    height: 80,
                    width: 160,
                    child: ClipRRect(
                      borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(15)),
                      child: Image.asset("assets/images/TrendingImages/PosterCovers/${data.containsKey("CoversPath")&&data["CoversPath"]!.length>index?data["CoversPath"]![index]:"defaultCover.png"}",
                        fit: BoxFit.fill,),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(15),
                      ),
                    ),
                    height: 80,
                    width: 160,
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                    alignment: Alignment.bottomLeft,
                    margin: const EdgeInsets.only(left: 10),
                    child: Text(data["Texts"]![index]
                    ),),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                height: 160,
                width: 60,
                child: Center(
                  child: Container(padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(40)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40), // Image border
                      child: SizedBox.fromSize(
                        size: const Size.square(45), // Image radius
                        child: Image.asset("assets/images/TrendingImages/PosterIcons/${data.containsKey("IconsPath")&&data["IconsPath"]!.length>index?data["IconsPath"]![index]:"defaultIcon.png"}",
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }



}