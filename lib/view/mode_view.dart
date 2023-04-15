import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studygit/components/text/locale_text.dart';
import 'package:studygit/constant/extension/string_extension.dart';
import 'package:studygit/constant/image/image_constant.dart';
import 'package:studygit/constant/init/lang/locale_keys.g.dart';
import 'package:studygit/model/custom_theme_data_model.dart';
import 'package:studygit/shared/custom_theme.dart';
import 'package:studygit/view/countdownPageView.dart';


class ModeView extends StatefulWidget {
  const ModeView({super.key});

  @override
  State<ModeView> createState() => _ModeViewState();
}

class _ModeViewState extends State<ModeView> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.welcome.locale),
      ),
      body: Center(
        child: Column(
          children: [
             Consumer<CustomThemeDataModel>(
              builder: (context, model, child) {
                return ElevatedButton(
                  onPressed: () {
                    model.setThemeData(data: CustomTheme().lightThemeData);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CountdownPageView()));
                  },
                  child: Text("Dark Mode"),
                );
              },
            ),
             Consumer<CustomThemeDataModel>(
              builder: (context, model, child) {
                return ElevatedButton(
                  onPressed: () {
                    model.setThemeData(data: ThemeData.light());
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CountdownPageView()));
                  },
                  child: Text("light Mode"),
                );
              },
            ),
            Image.asset(ImageConstants.instance.humanPhoto)
          ],
        ),
      ),
    );
  }
}