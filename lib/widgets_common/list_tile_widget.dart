import 'package:flutter/material.dart';

Widget myListTile(IconData myIcon, String title, {String count = '', Color colors = Colors.black, Color iconColor = Colors.black}){
  return ListTile(
    leading: Icon(myIcon, color: iconColor,),

    title: Text(title, style: TextStyle(fontSize: 18, color: colors),),
    trailing: count == '' ? SizedBox() : Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(color: Colors.red,
            borderRadius: BorderRadius.circular(20)),
        child: Center(child: Text(count!, style: TextStyle(color: Colors.white),))),
    onTap: () {

    },
  );
}