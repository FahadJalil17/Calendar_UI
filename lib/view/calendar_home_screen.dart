import 'package:calendar_ui/widgets_common/task_container_widget.dart';
import 'package:flutter/material.dart';

import '../widgets_common/appbar_widget.dart';
import '../widgets_common/calendar_container_widget.dart';
import '../widgets_common/show_drawer.dart';
import '../widgets_common/time_column.dart';

class CalendarHomeScreen extends StatefulWidget {
  const CalendarHomeScreen({Key? key}) : super(key: key);

  @override
  State<CalendarHomeScreen> createState() => _CalendarHomeScreenState();
}

class _CalendarHomeScreenState extends State<CalendarHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: appbarWidget(),
      drawer: showDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(alignment:Alignment.centerLeft, child: Text("Calendar", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  height: 50,
                  width: 220,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Container(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width / 4.8,
                              // margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)

                              ),
                              child: Center(child: Text("Month", style: TextStyle(fontSize: 20),))),
                        ],
                      ),
                      Text("Week", style: TextStyle(fontSize: 20),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: VerticalDivider(width: 20, color: Colors.black,),
                      ),
                      Text("Day", style: TextStyle(fontSize: 20),),
                      SizedBox(width: 10,)
                    ],
                  ),
                ),


                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Icon(Icons.add, color: Colors.white, size: 30,),
                      ),
                    )
                  ],
                )


              ],
            ),

            calendarContainerWidget(),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(alignment:Alignment.centerLeft, child: Text("Upcoming", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      timeColumn("07:00"),
                      timeColumn("07:30"),
                      timeColumn("08:00"),
                      timeColumn("08:30"),
                      timeColumn("09:00"),
                      timeColumn("09:30"),
                      timeColumn("10:00"),
                      timeColumn("10:30"),
                      timeColumn("11:00"),
                      timeColumn("11:30"),
                      timeColumn("12:00"),
                      timeColumn("12:30"),
                    ],
                  ),


                  // Column for Task
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 15,),
                      taskContainerWidget("Soccer Practice", "Design", "07:00",barColor: Colors.orange),
                      SizedBox(height: 55,),

                      taskContainerWidget("Grocery Shopping", "Coding", "08:30",barColor: Colors.green),

                      SizedBox(height: 55,),
                      taskContainerWidget("Dentist Appt", "Meeting", "10:00",barColor: Colors.purple),

                      SizedBox(height: 65,),
                      taskContainerWidget("Lunch", "Meeting", "11:30",barColor: Colors.yellow),

                    ],
                  ),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
