import 'package:flutter/material.dart';

import 'list_tile_widget.dart';

Widget showDrawer(){
  return Drawer(
    child: Expanded(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              // color: Colors.white12,
              color: Colors.black12,

            ),
            child: SizedBox(),
          ),
          myListTile(Icons.dashboard, "Dashboard"),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                color: Colors.blue.shade50,
                child:    myListTile(Icons.calendar_month, iconColor: Colors.blue, "Calendar", colors: Colors.blueAccent),
              ),

            ],
          ),
          myListTile(Icons.mail, "Mail", count: "8"),
          myListTile(Icons.chat, "Chat"),
          myListTile(Icons.task_sharp, "Tasks"),
          myListTile(Icons.shopping_bag_sharp, "Projects"),
          myListTile(Icons.file_copy_sharp, "File Manager"),
          myListTile(Icons.speaker_notes, "Notes"),
          myListTile(Icons.contacts, "Contacts"),

          SizedBox(height: 100,),

          Row(
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("CALENDARS", style: TextStyle(fontSize: 20),),
              ),
              SizedBox(width: 100,),
              Icon(Icons.add, size: 30,),
            ],
          ),

          myListTile(Icons.circle, iconColor: Colors.red, "Important"),
          myListTile(Icons.circle, iconColor: Colors.orange, "Meeting"),
          myListTile(Icons.circle, iconColor: Colors.green, "Event"),
          myListTile(Icons.circle, iconColor: Colors.purple, "Work"),
          myListTile(Icons.circle, iconColor: Colors.grey, "Other"),

        ],
      ),
    ),
  );
}