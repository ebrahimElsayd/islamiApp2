import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp2/ui/home/chapterDetailsScreen/versesWidget.dart';

class ChapterDetailsScreen extends StatefulWidget {
  static const String routName = 'ChapterDetails';

  @override
  State<ChapterDetailsScreen> createState() => _ChapterDetailsScreenState();
}

class _ChapterDetailsScreenState extends State<ChapterDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    ChapterDetails args =
        ModalRoute.of(context)!.settings.arguments as ChapterDetails;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/background_screen.png',
                ),
                fit: BoxFit.fill)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text(args.title),
            ),
            body: verses.isEmpty
                ? Center(child: CircularProgressIndicator())
                : Card(
                    margin: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return VersesWidget(verses[index], index);
                      },
                      separatorBuilder: (context, index) => Container(
                        color: Theme.of(context).primaryColor,
                        width: double.infinity,
                        height: 2,
                        margin: EdgeInsets.symmetric(horizontal: 64),
                      ),
                      itemCount: verses.length,
                    ),
                  )));
  }

  List<String> verses = [];

  loadFile(index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    verses = fileContent.trim().split("\n");
    setState(() {});
  }
}

class ChapterDetails {
  int index;
  String title;

  ChapterDetails(this.index, this.title);
}
