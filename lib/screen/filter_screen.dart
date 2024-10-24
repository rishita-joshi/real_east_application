import 'package:flutter/material.dart';
import 'package:techcoder_real_easte/components/submit_components.dart';
import 'package:techcoder_real_easte/utils/text_style.dart';
import '../../../main.dart';
import '../components/text_box_widget.dart';
import '../utils/themeclass.dart';

class T13FilterScreen extends StatefulWidget {
  static String tag = '/T13FilterScreen';

  @override
  T13FilterScreenState createState() => T13FilterScreenState();
}

class T13FilterScreenState extends State<T13FilterScreen> {
  int totalBadRooms = 1;
  int totalBathRooms = 1;
  var inputController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 50,
          child: SubmitComponents(
            textContent: "Update",
            onPressed: () {},
          ),
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Filter",
          style: boldTextStyle(),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(height: 12),
            TextBoxWidget(
              isPassword: false,
              hintText: 'Enter Price',
              controller: inputController1,
              inputType: TextInputType.name,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(8),
              height: 60,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "BedRoom",
                    style: primaryTextStyle(weight: FontWeight.w400),
                  ),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        child: Icon(
                          Icons.remove_circle_outline,
                          color: Colors.grey,
                        ),
                        onTap: () {
                          if (totalBadRooms == 1 || totalBadRooms < 1) {
                            totalBadRooms = 1;
                          } else {
                            totalBadRooms = totalBadRooms - 1;
                          }
                          setState(() {});
                        },
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Text(totalBadRooms.toString()),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.add_circle_outline,
                          color: Colors.grey,
                        ),
                        onTap: () {
                          totalBadRooms = totalBadRooms + 1;
                          setState(() {});
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(8),
              height: 60,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Bathroom",
                    style: primaryTextStyle(weight: FontWeight.w400),
                  ),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        child: Icon(
                          Icons.remove_circle_outline,
                          color: Colors.grey,
                        ),
                        onTap: () {
                          if (totalBadRooms == 1 || totalBadRooms < 1) {
                            totalBadRooms = 1;
                          } else {
                            totalBadRooms = totalBadRooms - 1;
                          }
                          setState(() {});
                        },
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Text(totalBadRooms.toString()),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.add_circle_outline,
                          color: Colors.grey,
                        ),
                        onTap: () {
                          totalBadRooms = totalBadRooms + 1;
                          setState(() {});
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
