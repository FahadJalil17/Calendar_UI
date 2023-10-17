import 'package:flutter/material.dart';

String profileImage = 'https://www.shutterstock.com/image-vector/smiling-graduate-student-wearing-academic-robe-600w-2135119037.jpg';


AppBar appbarWidget({title}){  // it is of appbar type
  return AppBar(
    backgroundColor: Colors.white70,
    automaticallyImplyLeading: false,
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(
            Icons.dashboard,
            color: Colors.black87,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    ),

    actions: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.search, size: 30, color: Colors.black87,),
          SizedBox(width: 20,),
          Icon(Icons.settings, color: Colors.black87,),
          SizedBox(width: 20,),
          Icon(Icons.notification_add, color: Colors.black87,),
          SizedBox(width: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: VerticalDivider(width: 20, color: Colors.black,),
          ),
          SizedBox(width: 10,),
          CircleAvatar(backgroundImage: NetworkImage(profileImage),),
          SizedBox(width: 20,),



        ],
      )
    ],
  );
}