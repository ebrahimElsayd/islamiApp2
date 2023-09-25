import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp2/ui/home/hadeth/hadithTitleWidget.dart';

import 'hadethData.dart';

class HadithTab extends StatefulWidget {
  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<Hadith> allHadith = [];

  @override
  Widget build(BuildContext context) {
    if (allHadith.isEmpty) {
      loadFile();
    }
    return Column(
      children: [
        Expanded(
            flex: 1, child: Image.asset('assets/images/ahadeth_image.png')),
        Container(
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.symmetric(
                    horizontal:
                        BorderSide(color: Theme.of(context).primaryColor))),
            child: Text(
              "الاحاديث",
              style: TextStyle(fontSize: 24),
            )),
        Expanded(
          flex: 3,
          child: allHadith.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.separated(
                  itemBuilder: (context, index) {
                    return HadithTitileWidget(allHadith[index]);
                  },
                  separatorBuilder: (context, index) {
                    return Container(
                      color: Theme.of(context).primaryColor,
                      width: double.infinity,
                      height: 2,
                      margin: EdgeInsets.symmetric(horizontal: 64),
                    );
                  },
                  itemCount: allHadith.length),
        )
      ],
    );
  }

  void loadFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadithList = fileContent.trim().split('#');
    for (int i = 0; i < ahadithList.length; i++) {
      String singleHadith = ahadithList[i];
      List<String> hadithLine = singleHadith.trim().split("\n");
      String title = hadithLine[0];
      hadithLine.remove(0);
      String hadethContent = hadithLine.join("\n");
      Hadith hadith = Hadith(title, hadethContent);
      allHadith.add(hadith);
      setState(() {});
    }
  }
}
