import 'package:flutter/material.dart';
import 'package:islamiapp2/ui/home/hadeth/hadethTab.dart';
import 'package:islamiapp2/ui/home/quran/quranTab.dart';
import 'package:islamiapp2/ui/home/radio/radioTab.dart';
import 'package:islamiapp2/ui/home/sebha/sebhaTab.dart';
import 'package:islamiapp2/ui/home/seetingTab/settingTab.dart';

import '../themeData/themeData.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.transparent,
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
          title: Text('islami'),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedTabIndex,
            onTap: (index) {
              selectedTabIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(
                    AssetImage("assets/images/ic_radio.png"),
                  ),
                  label: "radio"),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(
                    AssetImage("assets/images/ic_sebha.png"),
                  ),
                  label: "sebha"),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(
                    AssetImage("assets/images/ic_hadith.png"),
                  ),
                  label: "hadith"),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(
                    AssetImage("assets/images/ic_quran.png"),
                  ),
                  label: "radio"),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: Icon(Icons.settings),
                  label: "Setting"),
            ]),
        body: allTabs[selectedTabIndex],
      ),
    );
  }

  List<Widget> allTabs = [
    RadioTab(),
    SebhaTab(),
    HadithTab(),
    QuranTab(),
    Settingtab()
  ];
}
