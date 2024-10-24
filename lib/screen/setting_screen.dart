import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:techcoder_real_easte/utils/text_style.dart';
import 'package:techcoder_real_easte/utils/themeclass.dart';
import '../components/Text_box_widget.dart';

class SettingScreen extends StatelessWidget {
  final bool isDirect;

  SettingScreen({this.isDirect = false});

  Widget counter(String counter, String counterName) {
    return Column(
      children: <Widget>[
        // profile(counter),
        Text(
          counterName,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final profileImg = Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      alignment: FractionalOffset.center,
      child: CircleAvatar(
        backgroundImage: AssetImage(""),
        radius: 50,
      ),
    );
    final profileContent = Container(
      margin: EdgeInsets.only(top: 55.0),
      width: MediaQuery.of(context).size.width,
      decoration:
          boxDecoration(bgColor: Colors.white, radius: 10, showShadow: true),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(height: 50),
            Text(
              "Max",
              style: boldTextStyle(),
            ),
            Text(
              "Max@gmail.com",
              style: primaryTextStyle(color: ThemeClass.primaryColor),
            ),
          ],
        ),
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 90, left: 2, right: 2),
        physics: ScrollPhysics(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              SizedBox(height: 16),
              Container(
                margin: EdgeInsets.fromLTRB(16, 16, 16, 8),
                child: Stack(
                  children: <Widget>[profileContent, profileImg],
                ),
              ),
              SizedBox(height: 8),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
                decoration: boxDecoration(
                    bgColor: Colors.white, radius: 10, showShadow: true),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text(
                        "Personal",
                        style: boldTextStyle(),
                      ),
                      SizedBox(height: 8),
                      Text("Mxz_90"),
                      SizedBox(height: 8),
                      Divider(),
                      SizedBox(height: 8),
                      Text("Male"),
                      SizedBox(height: 8),
                      Divider(),
                      SizedBox(height: 8),
                      Text("Canada", maxLines: 2),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
                decoration: boxDecoration(
                    bgColor: Colors.white, radius: 10, showShadow: true),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      SizedBox(height: 8),
                      Text(
                        "Contact Us",
                        style: boldTextStyle(),
                      ),
                      SizedBox(height: 16),
                      Text("+91 36982145"),
                      Divider(),
                      SizedBox(height: 8),
                      Text("Astoncina@gmail.com"),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
