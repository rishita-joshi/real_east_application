import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:techcoder_real_easte/screen/filter_screen.dart';
import 'package:techcoder_real_easte/screen/property_details.dart';

import '../components/fav_property.dart';
import '../components/horizotional_list.dart';
import '../components/text_box_widget.dart';
import '../utils/text_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

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
              child: Icon(Icons.filter_alt_off_outlined))
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
              Text(
                "Recent Property",
                style: boldTextStyle(),
              ),
              HorizontalList(
                spacing: 10,
                itemCount: teacher.length,
                itemBuilder: (_, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PropertyDetails()),
                        );
                      },
                      child: SizedBox(
                        height: 200,
                        width: 280,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                width: 280,
                                teacher[index],
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            Container(
                              height: 200,
                              width: 280,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.transparent,
                                        Colors.black87
                                      ])),
                            ),
                            Positioned(
                              bottom: 40,
                              left: 10,
                              child: Text(
                                "property Name",
                                style: boldTextStyle(color: Colors.white),
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 10,
                              child: Text(
                                "Property Location",
                                style: primaryTextStyle(color: Colors.white),
                              ),
                            ),
                            Positioned(
                                right: 20,
                                bottom: 20,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                      size: 30,
                                    )))
                          ],
                        ),
                      ));
                },
              ),
              SizedBox(
                height: 10,
              ),
              Text("Favourite City", style: boldTextStyle()),
              HorizontalList(
                itemCount: mListings.length,
                itemBuilder: (_, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PropertyDetails()),
                        );
                      },
                      child: FavouriteProperty(
                        imagePath: mListings[index],
                        placeName: 'City 1',
                      ));
                },
              ),
              SizedBox(height: 8),
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
                              builder: (context) => const PropertyDetails()),
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
            ],
          ),
        ),
      ),
    );
  }
}
