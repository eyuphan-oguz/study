import 'dart:async';

import 'package:flutter/material.dart';


class CountdownPageView extends StatefulWidget {
  const CountdownPageView({Key? key}) : super(key: key);

  @override
  State<CountdownPageView> createState() => _CountdownPageViewState();
}

class _CountdownPageViewState extends State<CountdownPageView> {
  Duration duration = Duration();
  Timer? timer;
  bool isCountdown = true;
  static const countdownDuration = Duration(minutes: 30);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //startTimer();
    reset();
  }

  void reset(){
    if(isCountdown){
      setState(() {
        duration = countdownDuration;
      });
    }else{
      setState(() {
        duration = Duration();
      });
    }
  }

  void addTime(){
    final addSeconds = isCountdown ? -1 : 1;

    setState(() {
      final seconds = duration.inSeconds + addSeconds;
      if(seconds < 0){
        timer?.cancel();
      }else{
        duration = Duration(seconds: seconds);
      }
    });
  }

  void startTimer({bool resets = true}){
    if(resets){
      reset();
    }

    timer=Timer.periodic(Duration(seconds: 1), (_)=>addTime());
  }

  void stopTimer({bool resets = true}){
    if(resets){
      reset();
    }
    setState(() {
      timer?.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildTime(),
        buildButtons()
      ],
    ) ,));

  }
  Widget buildTime(){
    String twoDigits(int n) => n.toString().padLeft(2,'0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildTimeCard(time:hours , header:"HOURS"),
        const SizedBox(width: 8,),
        buildTimeCard(time:minutes , header:"MINUTES"),
        const SizedBox(width: 8,),
        buildTimeCard(time:seconds , header:"SECONDS"),

      ],
    );
  }

  Widget buildTimeCard({required String time, required String header}){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Text(time,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 72),)),
            SizedBox(height: 24,),
            Text(header),

      ],
    );
  }

  Widget buildButtons(){
    final isRunning = timer == null ? false : timer!.isActive;
    final isCompleted = duration.inSeconds == 0;
    return isRunning || !isCompleted
        ? Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(child: isRunning ? Text("STOP") : Text("RESUME"),onPressed:(){
          if(isRunning){
            stopTimer(resets:false);
          }else{
            startTimer(resets:false);
          }
        }),
        SizedBox(width: 12,),
        ElevatedButton(child:Text("CANCEL"),onPressed:stopTimer),
      ],
    ) : ElevatedButton(child:Text("Start Timer"),onPressed:(){startTimer();});
  }
}
