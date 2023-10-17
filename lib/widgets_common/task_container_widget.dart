import 'dart:math';

import 'package:flutter/material.dart';


List<String> avatarImages = [
  'https://www.shutterstock.com/image-vector/young-smiling-man-adam-avatar-3d-600w-2107967969.jpg',
  'https://www.shutterstock.com/image-vector/young-smiling-man-avatar-brown-beard-600w-2261401207.jpg',
  'https://www.shutterstock.com/image-vector/young-smiling-woman-mia-avatar-3d-600w-2127358541.jpg',
  'https://www.shutterstock.com/image-vector/senior-man-avatar-smiling-elderly-beard-600w-2144413121.jpg',
];


Widget buildImage(BuildContext context) {
  var random = Random();
  int r = random.nextInt(avatarImages.length);
  String image_name  = avatarImages[r].toString();
  return Image.network(image_name);
}



Widget taskContainerWidget(String title, subtitle, timeSlot,{Color? barColor}){
  return Container(
    height: 130,
    width: 280,
      decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(8)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: barColor,
            width: 5,
              height: 110,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("$title", style: TextStyle(fontSize: 17),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                     Text("$subtitle"),
                      SizedBox(width: 20,),
                      Icon(Icons.watch_later, color: Colors.grey,),
                     Text(" $timeSlot"),
                    ],
                  ),
                  SizedBox(height: 10,),

                  Container(
                    height: 30,
                    width: 210,
                    child: ListView.builder(
                      shrinkWrap: true,
                        itemCount: avatarImages.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index){
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(right: 5.0),
                            child: buildImage(context),
                          ),
                        ],
                      );
                    }),
                  )



                ],
              ),
            )
          ],
        ),
      )
  );
}