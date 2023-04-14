import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studygit/model/custom_theme_data_model.dart';
import 'package:studygit/view/container_widget.dart';
import 'package:studygit/view/countdownPageView.dart';
import 'package:studygit/view/mode_view.dart';
import 'package:studygit/view/study_container.dart';

void main() {
  runApp( MultiProvider(
    providers: [
        ChangeNotifierProvider(
          create: (context) => CustomThemeDataModel(),
          
        ),
      ],
      child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<CustomThemeDataModel>(context).getThemeData,
      title: 'Flutter Demo',
      home: ModeView(),
    );
  }
}


