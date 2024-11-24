import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:techcoder_real_easte/screen/filter_screen.dart';
import 'package:techcoder_real_easte/screen/property_details.dart';
import 'package:techcoder_real_easte/utils/themeclass.dart';

import '../components/fav_property.dart';
import '../components/horizotional_list.dart';
import '../components/text_box_widget.dart';
import '../utils/text_style.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> mListings = [];
  List<String> teacher = [];
  var searchController = TextEditingController();

  @override
  void initState() {
    mListings.add("assets/city_1.jpg");
    mListings.add("assets/city_2.jpg");
    mListings.add("assets/city_3.jpg");
    teacher.add("assets/city_1.jpg");
    teacher.add("assets/city_1.jpg");
    teacher.add("assets/city_1.jpg");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hii ! Alexa"),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => T13FilterScreen()),
                );
              },
              child: Icon(
                Icons.filter_alt_off_outlined,
                color: ThemeClass.primaryColor,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 20),

              HorizontalList(
                itemCount: mListings.length,
                itemBuilder: (_, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PropertyDetails(
                                    image: mListings[index],
                                    name: "Best PentHouse",
                                  )),
                        );
                      },
                      child: SuggestionComponents(
                          // imagePath: mListings[index],
                          // placeName: 'City 1',
                          ));
                },
              ),
              SizedBox(height: 20),

              Text(
                "Upcoming Property",
                style: boldTextStyle(),
              ),
              HorizontalList(
                itemCount: mListings.length,
                itemBuilder: (_, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PropertyDetails(
                                  image: mListings[index],
                                  name: "My Garden House")),
                        );
                      },
                      child: RecentlyAdded(
                        imagePath: "assets/city_1.jpg",
                        placeName: "xyz",
                        placeDistance: '30 KM',
                        placeDes: 'Hello There Most Famous Place',
                      ));
                },
              ),
              SizedBox(
                height: 20,
              ),

              Text(
                "Recent Property",
                style: boldTextStyle(),
              ),
              SizedBox(height: 20),

              ListView.builder(
                shrinkWrap: true,
                primary: false,
                physics: NeverScrollableScrollPhysics(),
                //  spacing: 10,
                itemCount: teacher.length,
                itemBuilder: (_, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PropertyDetails(
                                  name: "PentHouse", image: teacher[index])),
                        );
                      },
                      child: Card(
                        color: Colors.white,
                        surfaceTintColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  width: 100,
                                  height: 100,
                                  teacher[index],
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            "property Name",
                                            style: boldTextStyle(
                                                color: Colors.black),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                        ],
                                      ),

                                      // SizedBox(width: 30),
                                      // IconButton(
                                      //     onPressed: () {},
                                      //     icon: Icon(
                                      //       Icons.favorite,
                                      //       color: Colors.black,
                                      //       // size: 30,
                                      //     )),
                                    ],
                                  ),
                                  Text(
                                    "Property Location",
                                    style:
                                        primaryTextStyle(color: Colors.black),
                                  ),
                                  SizedBox(height: 4),
                                  SizedBox(
                                      height: 10,
                                      width: MediaQuery.of(context).size.width /
                                          2.8,
                                      child: Divider()),
                                  Row(
                                    children: [
                                      IconButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: () {},
                                          icon: Icon(Icons.bookmark_outline)),
                                      IconButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: () {},
                                          icon: Icon(Icons.share)),
                                    ],
                                  ),
                                ],
                              ),

                              // Container(
                              //   height: 200,
                              //   width: 280,
                              //   decoration: BoxDecoration(
                              //       borderRadius: BorderRadius.circular(12),
                              //       gradient: LinearGradient(
                              //           begin: Alignment.topCenter,
                              //           end: Alignment.bottomCenter,
                              //           colors: [
                              //             Colors.transparent,
                              //             Colors.black87
                              //           ])),
                              // ),
                            ],
                          ),
                        ),
                      ));
                },
              ),
              SizedBox(
                height: 10,
              ),
              //Text("Favourite City", style: boldTextStyle()),
              // HorizontalList(
              //   itemCount: mListings.length,
              //   itemBuilder: (_, index) {
              //     return InkWell(
              //         onTap: () {
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //                 builder: (context) => const PropertyDetails()),
              //           );
              //         },
              //         child: FavouriteProperty(
              //           imagePath: mListings[index],
              //           placeName: 'City 1',
              //         ));
              //   },
              // ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
