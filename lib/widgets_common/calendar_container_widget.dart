
import 'package:flutter/material.dart';

Widget calendarContainerWidget(){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        children: [
          Container(
              decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back),
                  Row(
                    children: [
                      Text("June ", style: TextStyle(fontSize: 20),),
                      Text("2021", style: TextStyle(fontSize: 16, color: Colors.black54),),
                    ],
                  ),
                  Icon(Icons.arrow_forward),
                ],
              )
          ),
          SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              dayRow("MO", Colors.black),
              dayRow("TU"),
              dayRow("WE"),
              dayRow("TH"),
              dayRow("FR"),
              dayRow("SA"),
              dayRow("SU"),
            ],
          ),

          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              dateRow("", backColor: Colors.white),
              dateRow("1"),
              dateRow("2"),
              dateRow("3"),
              dateRow("4"),
              dateRow("5"),
              dateRow("6"),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              dateRow("7"),
              dateRow("8"),
              dateRow("9"),
              dateRow("10"),
              dateRow("11"),
              dateRow("12"),
              dateRow("13"),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              dateRow("14"),
              dateRow("15", backColor: Colors.blue, textColor: Colors.white),
              dateRow("16"),
              dateRow("17"),
              dateRow("18"),
              dateRow("19"),
              dateRow("20"),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              dateRow("21"),
              dateRow("22"),
              dateRow("23"),
              dateRow("24"),
              dateRow("25"),
              dateRow("26"),
              dateRow("27"),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              dateRow("28"),
              dateRow("29"),
              dateRow("30"),
              dateRow("31"),
              dateRow("", backColor: Colors.white),
              dateRow("", backColor: Colors.white),
              dateRow("", backColor: Colors.white),
            ],
          ),
          SizedBox(height: 15,)

        ],
      ),
    ),
  );
}


Widget dayRow([String? title, Color textColor = Colors.grey, Color backColor = Colors.white70]){
  return Container(
    width: 30,
      height: 30,
      color: backColor,
      child: Center(child: Text("$title", style: TextStyle(fontSize: 18, color: textColor),)));
}

Widget dateRow(String? title, {Color textColor = Colors.black, Color backColor = Colors.black12}){
  return Stack(
    children: [
      Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: backColor ,
          ),
          child: Center(child: Text("$title", style: TextStyle(fontSize: 18, color: textColor),))),
    ],
  );
}