import 'package:flutter/material.dart';
import 'package:islamiapp2/ui/home/seetingTab/themeBottomSheet.dart';

import 'languageBottomSheet.dart';

class Settingtab extends StatefulWidget {
  const Settingtab({super.key});

  @override
  State<Settingtab> createState() => _SettingtabState();
}

class _SettingtabState extends State<Settingtab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Themes'),
          InkWell(
              onTap: () {
                showThemeBottomSheet();
              },
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 16),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                          color: Theme.of(context).dividerColor, width: 1)),
                  child: Text("Light",
                      style: Theme.of(context).textTheme.titleMedium))),
          SizedBox(
            height: 20,
          ),
          Text('Language'),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                        color: Theme.of(context).dividerColor, width: 1)),
                child:
                    Text("en", style: Theme.of(context).textTheme.titleMedium)),
          )
        ],
      ),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ThemeBottomSheet();
      },
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return LanguageBottomSheet();
      },
    );
  }
}
