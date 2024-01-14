import 'package:flutter/material.dart';

class MostTakenList extends StatelessWidget {
  final Map<String, List<String>> data;
  const MostTakenList({super.key , required this.data});

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: ListView.builder(
        itemCount: getCount(data),
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
                    child: Image.asset(checkCover(data, index),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Center(child: Text(checkText(data, index)),)
              ],
            ),
          );
        },
      ),
    );
  }
  String checkText(Map<String, List<String>> data,int index){
    if (data.containsKey("Texts"))
    {return data["Texts"]!.elementAt(index);}
    else{return "";}
  }

  String checkCover(Map<String, List<String>> data,int index){try{
    if (data.containsKey("ImagesPath"))
    {return data["ImagesPath"]!.elementAt(index);}
    else{return "assets/images/MostTakenImages/defaultImage.png";}
  }
  catch(ex){
    return"assets/images/MostTakenImages/defaultImage.png";
  }}
}

int getCount(Map<String, List<String>> data) {try{
  return data["Texts"]!.length;
}catch(ex){return 0;}}
