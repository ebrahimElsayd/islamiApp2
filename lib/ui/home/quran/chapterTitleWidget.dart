import 'package:flutter/material.dart';
import 'package:islamiapp2/ui/home/chapterDetailsScreen/chaperDetailsScreeen.dart';

class ChapterTitileWidget extends StatelessWidget {
  String title;
  int index;

  ChapterTitileWidget(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(ChapterDetailsScreen.routName,
            arguments: ChapterDetails(index, title));
      },
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8),
          // margin: EdgeInsets.all(8),chapterTitleWidget.dart

          child: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          )),
    );
  }
}
