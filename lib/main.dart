import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studygit/constant/app/app_constant.dart';
import 'package:studygit/constant/init/lang/language_manager.dart';
import 'package:studygit/model/custom_theme_data_model.dart';
import 'package:studygit/view/container_widget.dart';
import 'package:studygit/view/countdownPageView.dart';
import 'package:studygit/view/mode_view.dart';
import 'package:studygit/view/profile_page_view.dart';
import 'package:studygit/view/study_container.dart';

void main() {
  runApp(EasyLocalization(
      child: MyApp(),
      supportedLocales: LanguageManager.instance?.supportedLocales,
      startLocale: LanguageManager.instance?.enLocale,
      path: ApplicationConstants.LANG_ASSET_PATH));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CustomThemeDataModel(),
        ),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: Provider.of<CustomThemeDataModel>(context).getThemeData,
            home: ProfilePageView(),
          );
        },
      ),
    );
  }
}
