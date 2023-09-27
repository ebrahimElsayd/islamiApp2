import 'package:flutter/material.dart';
import 'package:islamiapp2/ui/home/hadeth/hadethData.dart';
import 'package:islamiapp2/ui/themeData/themeData.dart';

class HadithDetailsScreen extends StatelessWidget {
  static const String routName = 'hadith_tab';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as Hadith;
    return Container(
        // padding: EdgeInsets.symmetric(vertical: 20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  MyThemeData.isDarkEnabled
                      ? 'assets/images/background_screen_dark.png'
                      : 'assets/images/background_screen.png',
                ),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: Column(
            children: [
              Expanded(
                child: Card(
                    margin: EdgeInsets.symmetric(vertical: 48, horizontal: 24),
                    child: SingleChildScrollView(
                        child: Text(
                      args.content,
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ))),
              ),
            ],
          ),
        ));
  }
}
