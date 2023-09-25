import 'package:flutter/material.dart';
import 'package:islamiapp2/ui/home/chapterDetailsScreen/chaperDetailsScreeen.dart';
import 'package:islamiapp2/ui/home/hadithDetailsScreen/hadithDetailsScreen.dart';
import 'package:islamiapp2/ui/home/homescreen.dart';

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
      theme: ThemeData(
        cardTheme: CardTheme(
          color: Colors.white,
          surfaceTintColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
            side: BorderSide(color: Theme.of(context).primaryColor),
          ),
          elevation: 18,
        ),
        scaffoldBackgroundColor: Colors.transparent,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            selectedIconTheme: IconThemeData(size: 32, color: Colors.black)),
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            titleTextStyle: TextStyle(color: Colors.black, fontSize: 28)),
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color(0xFFB7935F),
            primary: Color(0xFFB7935F),
            onPrimary: Colors.white,
            secondary: Color(0x89B7935F),
            onSecondary: Colors.black),
        useMaterial3: true,
      ),
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
