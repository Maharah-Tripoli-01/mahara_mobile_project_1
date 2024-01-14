
import 'package:flutter/material.dart';

class TrendingItems extends StatelessWidget {
  final Map<String, List<String>> data;

  const TrendingItems({super.key, required this.data}) ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.sizeOf(context).width,
    height: 160,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: getCount(data),
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
                    child: Image.asset(checkCover(data, index),
                      fit: BoxFit.fill, ),
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
                  child: Text(checkText(data, index)
                  ),),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 15),
              height: 160,
              width: 60,
              child: Center(
                child: Container(padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(40) ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40), // Image border
                    child: SizedBox.fromSize(
                      size: const Size.square(45), // Image radius
                      child: Image.asset(checkIcon(data, index),
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
  String checkIcon(Map<String, List<String>> data,int index){
    try{
      if (data.containsKey("IconsPath"))
      {return data["IconsPath"]!.elementAt(index);}
      else{return "assets/images/PosterIcons/defaultIcon.png";}
    }
    catch(ex){
      return "assets/images/PosterIcons/defaultIcon.png";
    }
  }
  String checkCover(Map<String, List<String>> data,int index){try{
    if (data.containsKey("CoversPath"))
    {return data["CoversPath"]!.elementAt(index);}
    else{return "assets/images/PosterCovers/defaultCover.png";}
  }
  catch(ex){
    return"assets/images/PosterCovers/defaultCover.png";
  }}
  String checkText(Map<String, List<String>> data,int index){
    if (data.containsKey("Texts"))
    {return data["Texts"]!.elementAt(index);}
    else{return "";}
  }

  int getCount(Map<String, List<String>> data) {try{
    return data["Texts"]!.length;
  }catch(ex){return 0;}}

}
