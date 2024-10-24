import 'package:flutter/material.dart';
import '../utils/text_style.dart';
import '../utils/themeclass.dart';
import 'text_box_widget.dart';

class SubmitComponents extends StatefulWidget {
  var textContent;

  VoidCallback onPressed;

  SubmitComponents({
    required this.textContent,
    required this.onPressed,
  });

  @override
  SubmitComponentsState createState() => SubmitComponentsState();
}

class SubmitComponentsState extends State<SubmitComponents> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        decoration: boxDecoration(bgColor: ThemeClass.primaryColor, radius: 8),
        padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Center(
                child: Text(widget.textContent,
                    style: boldTextStyle(color: Colors.white))),
          ],
        ),
      ),
    );
  }
}
