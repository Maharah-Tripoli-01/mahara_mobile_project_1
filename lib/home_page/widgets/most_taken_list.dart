import 'package:flutter/material.dart';

class MostTakenList extends StatelessWidget {
  final Map<String, List<String>> data;
  const MostTakenList({super.key , required this.data});
  static const String imagesPath = "assets/images/MostTakenImages/";
  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: ListView.builder(
        itemCount: data["Texts"]?.length??0,
        itemBuilder: (context, index) {
          return Container(
            height: 70,
            margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 13),
                  height: 60,
                  width: 100,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    child: Image.asset("$imagesPath${data.containsKey("ImagesPath")&&data["ImagesPath"]!.length>index?data["ImagesPath"]![index]:"defaultImage.png"}",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Center(child: Text(data["Texts"]![index]),)
              ],
            ),
          );
        },
      ),
    );
  }


}

