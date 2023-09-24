import 'package:flutter/material.dart';

class VersesWidget extends StatelessWidget {
  String content;
  int index;

  VersesWidget(this.content, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(8),
        // margin: EdgeInsets.all(8),

        child: Text(
          "${content} (${index + 1})",
          textDirection: TextDirection.rtl,
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ));
  }
}
