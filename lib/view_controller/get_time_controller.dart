import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';



void getDaysInMonth(){
  DateTime now = DateTime.now();
  int day = now.day;
  int month = now.month;
  int year = now.year;
  int daysInMonth = DateTime(year, month + 1, 0).day;

}


Future<String> getCurrentDayOfWeek({required DateTime now}) async{
  await initializeDateFormatting('tr_TR', null);
  DateTime now = DateTime.now();
  String dayOfWeek = DateFormat('EEEE','tr_TR').format(now);
  print('Today is $dayOfWeek');
  return dayOfWeek;
}