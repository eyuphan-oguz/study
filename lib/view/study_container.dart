import 'package:flutter/material.dart';

class StudyContainer extends StatefulWidget {
  const StudyContainer({Key? key}) : super(key: key);

  @override
  State<StudyContainer> createState() => _StudyContainerState();
}

class _StudyContainerState extends State<StudyContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 250,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,

            ),
            itemBuilder: (context, index) {
              final now = DateTime.now();
              final firstDayOfYear = DateTime(now.year, 1, 1);
              final daysInMonth = DateTime(now.year, index + 1, 0).day;
              final firstWeekdayOfMonth = DateTime(now.year, index + 1, 1).weekday;
              final dayOfMonth = index - firstWeekdayOfMonth + 2;
              final date = DateTime(now.year, index + 1, dayOfMonth);

              return Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(6),
                  color: now.isAfter(date) ? Colors.green : null,
                ),
                child: Center(
                  child: Text(
                    dayOfMonth > 1 && dayOfMonth <= daysInMonth
                        ? dayOfMonth.toString()
                        : '',
                  ),
                ),
              );
            },
            itemCount: 12 * 7, // 12 ay x 7 kutu
          )

        ),
      )
      ,
    );
  }
}
