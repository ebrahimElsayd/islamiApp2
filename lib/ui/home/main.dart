import 'package:flutter/material.dart';
import 'package:islamiapp2/ui/home/chapterDetailsScreen/chaperDetailsScreeen.dart';
import 'package:islamiapp2/ui/home/hadithDetailsScreen/hadithDetailsScreen.dart';
import 'package:islamiapp2/ui/home/homescreen.dart';
import 'package:islamiapp2/ui/themeData/themeData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyThemeData.lightMood,
      darkTheme: MyThemeData.darktMood,
      themeMode: ThemeMode.light,
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
        ChapterDetailsScreen.routName: (context) => ChapterDetailsScreen(),
        HadithDetailsScreen.routName: (context) => HadithDetailsScreen(),
      },
      initialRoute: HomeScreen.routName,
      debugShowCheckedModeBanner: false,
    );
  }
}
