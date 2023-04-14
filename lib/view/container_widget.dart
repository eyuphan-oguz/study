import 'package:flutter/material.dart';
import 'package:studygit/view_controller/get_time_controller.dart';

class DailyProgress extends StatefulWidget {
  @override
  _DailyProgressState createState() => _DailyProgressState();
}

class _DailyProgressState extends State<DailyProgress> {
  List<bool> _workHours = List.generate(24, (index) => false);

  @override
  Widget build(BuildContext context) {
   getDaysInMonth();

    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Progress'),
      ),
      body: GridView.count(
        crossAxisCount: 6,
        children: List.generate(
          24,
          (index) {
            Color color = _getColor(index);
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: color,
              ),
            );
          },
        ),
      ),
    );
  }

  Color _getColor(int index) {
    if (_workHours[index]) {
      return Colors.green[800]!;
    } else if (index < DateTime.now().hour) {
      return Colors.green[400]!;
    } else {
      return Colors.green[100]!;
    }
  }
}
