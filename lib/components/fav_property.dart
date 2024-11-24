import 'package:flutter/material.dart';
import 'package:techcoder_real_easte/utils/text_style.dart';

import '../utils/themeclass.dart';
import 'text_box_widget.dart';

class FavouriteProperty extends StatelessWidget {
  FavouriteProperty({
    required this.imagePath,
    required this.placeName,
  });

  final String imagePath;
  final String placeName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration:
          boxDecoration(bgColor: Colors.white, showShadow: true, radius: 20),
      margin: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: Image.asset(imagePath,
                height: 160, width: 200, fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              placeName,
              style: boldTextStyle(),
            ),
          )
        ],
      ),
    );
  }
}

class RecentlyAdded extends StatelessWidget {
  RecentlyAdded({
    required this.imagePath,
    required this.placeName,
    required this.placeDistance,
    required this.placeDes,
  });

  final String imagePath;
  final String placeName;

  final String placeDistance;

  final String placeDes;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      decoration:
          boxDecoration(bgColor: Colors.white, showShadow: true, radius: 20),
      margin: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: Image.asset(imagePath,
                height: 160,
                width: MediaQuery.of(context).size.width / 1.5,
                fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            child: Text(
              placeName,
              style: primaryTextStyle(weight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            child: Text(
              placeDistance,
              style: primaryTextStyle(),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            child: Text(
              placeDes,
              style: primaryTextStyle(),
            ),
          ),
        ],
      ),
    );
  }
}

class SuggestionComponents extends StatefulWidget {
  const SuggestionComponents({super.key});

  @override
  State<SuggestionComponents> createState() => _SuggestionComponentsState();
}

class _SuggestionComponentsState extends State<SuggestionComponents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
        color: ThemeClass.primaryColor,
        width: 1,
      )),
      padding: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(width: 6),
          Icon(
            Icons.apartment,
          ),
          SizedBox(width: 6),
          Text(
            "ApartMents",
            style: primaryTextStyle(),
          )
        ],
      ),
    );
  }
}
