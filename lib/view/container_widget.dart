import 'package:flutter/material.dart';
import 'package:studygit/view_controller/get_time_controller.dart';

class DailyProgress extends StatefulWidget {
  @override
  _DailyProgressState createState() => _DailyProgressState();
}

class _DailyProgressState extends State<DailyProgress> {
  List<bool> _workHours = List.generate(24, (index) => false);
  late int numberOfDays;
  DateTime _dateTime=DateTime.now();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    numberOfDays=getDaysInMonth();
  }

  @override
  Widget build(BuildContext context) {
   getDaysInMonth();

    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Progress'),
      ),
      body: GridView.count(
        crossAxisCount: 7,
        children: List.generate(
          numberOfDays,
          (index) {
            Color color = Colors.green;
            return GestureDetector(
              onTap: (){
                print(index+1);
                print(findDayOfWeekByIndex(index: index+1, month: _dateTime.month, year: _dateTime.year));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: color,
                  
                ),
                child: Text((index+1).toString()),
              ),
            );
          },
        ),
      ),
    );
  }
}

