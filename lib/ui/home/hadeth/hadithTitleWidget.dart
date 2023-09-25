import 'package:flutter/material.dart';
import 'package:islamiapp2/ui/home/hadeth/hadethData.dart';
import 'package:islamiapp2/ui/home/hadithDetailsScreen/hadithDetailsScreen.dart';

class HadithTitileWidget extends StatelessWidget {
  Hadith hadith;

  HadithTitileWidget(this.hadith);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadithDetailsScreen.routName, arguments: hadith);
      },
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8),
          // margin: EdgeInsets.all(8),chapterTitleWidget.dart

          child: Text(
            hadith.title,
            style: TextStyle(fontSize: 20),
          )),
    );
  }
}
