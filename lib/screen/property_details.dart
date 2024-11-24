import 'package:flutter/material.dart';
import 'package:techcoder_real_easte/utils/text_style.dart';
import 'package:techcoder_real_easte/utils/themeclass.dart';

import '../components/submit_components.dart';

class PropertyDetails extends StatefulWidget {
  PropertyDetails({super.key, required this.image, required this.name});

  final String image;

  final String name;

  @override
  State<PropertyDetails> createState() => _PropertyDetailsState();
}

class _PropertyDetailsState extends State<PropertyDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Card(
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          elevation: 10,
          color: Colors.white,
          surfaceTintColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "Buy With This Price",
                      style: boldTextStyle(),
                    ),
                    Text(
                      "\$ 10,000",
                      style: boldTextStyle(
                          color: ThemeClass.primaryColor, size: 20),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder()),
                          onPressed: () {},
                          child: Text(
                            "Survey",
                            style: boldTextStyle(),
                          )),
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: SubmitComponents(
                            textContent: "Discuss", onPressed: () {}))
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                width: MediaQuery.of(context).size.width,
                height: 380,
                widget.image,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  widget.name,
                  style: boldTextStyle(),
                ),
              ),
              SizedBox(height: 10),
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Discover the joy of coastal luxury living with this exquisite waterfront estate located in Canada. Clean PentHouse BedRoom  26m with TV, WIFI , Electrical kettle , Personal Writing . providing ample space for both relaxation and entertainment.",
                  style: primaryTextStyle(size: 16),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "Facilities",
                      style: boldTextStyle(),
                    ),
                    Text(
                      "See All",
                      style: boldTextStyle(color: ThemeClass.primaryColor),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          child: Icon(
                            Icons.wifi,
                            color: ThemeClass.primaryColor,
                          ),
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: ThemeClass.primaryColor.withOpacity(0.2)),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Wi-Fi",
                          style: boldTextStyle(),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          child: Icon(
                            Icons.tv,
                            color: ThemeClass.primaryColor,
                          ),
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: ThemeClass.primaryColor.withOpacity(0.2)),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "TV",
                          style: boldTextStyle(),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          child: Icon(
                            Icons.ac_unit,
                            color: ThemeClass.primaryColor,
                          ),
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: ThemeClass.primaryColor.withOpacity(0.2)),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "AC",
                          style: boldTextStyle(),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          child: Icon(
                            Icons.lock,
                            color: ThemeClass.primaryColor,
                          ),
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: ThemeClass.primaryColor.withOpacity(0.2)),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Digital Lock",
                          style: boldTextStyle(),
                        ),
                      ],
                    ),
                    // Column(
                    //   children: [
                    //     Container(
                    //       child: Icon(
                    //         Icons.speaker,
                    //         color: ThemeClass.primaryColor,
                    //       ),
                    //       padding: EdgeInsets.all(8),
                    //       decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(6),
                    //           color: ThemeClass.primaryColor.withOpacity(0.2)),
                    //     ),
                    //     SizedBox(height: 10),
                    //     Text(
                    //       "DJ System",
                    //       style: boldTextStyle(),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Divider(),
            ],
          ),
        ));
  }
}
