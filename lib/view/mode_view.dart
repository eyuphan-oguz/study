import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studygit/model/custom_theme_data_model.dart';


class ModeView extends StatefulWidget {
  const ModeView({super.key});

  @override
  State<ModeView> createState() => _ModeViewState();
}

class _ModeViewState extends State<ModeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
             Consumer<CustomThemeDataModel>(
              builder: (context, model, child) {
                return ElevatedButton(
                  onPressed: () {
                    model.setThemeData(data: ThemeData.dark());
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
                  },
                  child: Text("light Mode"),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}