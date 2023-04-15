import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';



int getDaysInMonth(){
  DateTime now = DateTime.now();
  int day = now.day;
  int month = now.month;
  int year = now.year;
  int daysInMonth = DateTime(year, month + 1, 0).day;
  return daysInMonth;


}


Future<String> getCurrentDayOfWeek({required DateTime now}) async{
  await initializeDateFormatting('tr_TR', null);
  DateTime now = DateTime.now();
  String dayOfWeek = DateFormat('EEEE','tr_TR').format(now);
  print('Today is $dayOfWeek');
  return dayOfWeek;
}






String findDayOfWeekByIndex({required int index, required int month, required int year}) {
  DateTime date = DateTime(year, month, index);
  
  String dayOfWeek = '';

  switch (date.weekday) {
    case DateTime.monday:
      dayOfWeek = 'Pazartesi';
      break;
    case DateTime.tuesday:
      dayOfWeek = 'Salı';
      break;
    case DateTime.wednesday:
      dayOfWeek = 'Çarşamba';
      break;
    case DateTime.thursday:
      dayOfWeek = 'Perşembe';
      break;
    case DateTime.friday:
      dayOfWeek = 'Cuma';
      break;
    case DateTime.saturday:
      dayOfWeek = 'Cumartesi';
      break;
    case DateTime.sunday:
      dayOfWeek = 'Pazar';
      break;
  }

  return dayOfWeek;
}
