import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techcoder_real_easte/utils/themeclass.dart';
import '../model/chat_model.dart';
import '../utils/text_style.dart';
import 'chat_details_screen.dart';

class ChatListScreen extends StatefulWidget {
  const ChatListScreen({super.key});

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  List<ChatModel> chatModel = [
    (ChatModel(name: "Tom", profile: "assets/person_1.jpg")),
    (ChatModel(name: "Max", profile: "assets/person_2.jpg")),
    (ChatModel(name: "Sam", profile: "assets/person_3.jpg")),
    (ChatModel(name: "Harry", profile: "assets/person_4.jpg")),
    (ChatModel(name: "Mick", profile: "assets/person_2.jpg")),
    (ChatModel(name: "Dustin", profile: "assets/person_5.jpg")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Start a Conversation",
            style: boldTextStyle(),
          ),
        ),
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: chatModel.length,
            itemBuilder: (context, index) {
              return ListTile(
                minLeadingWidth: 60,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChatDetailsScreen(
                              groupId: '1',
                              recevierId: '2',
                              name: chatModel[index].name!)));
                },
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Image.asset(
                      height: 200,
                      width: 60,
                      fit: BoxFit.cover,
                      "${chatModel[index].profile}",
                    )),

                //  CachedNetworkImage(
                //         height: 50,
                //         width: 50,
                //         fit: BoxFit.fitWidth,
                //         imageUrl:
                //             snapshot.data![index].imageProfile ??
                //                 "")
                //     //"https://i.pinimg.com/564x/eb/b9/c4/ebb9c471dfc7ef0ceebadeada6458b8c.jpg"
                //     //)
                //     .cornerRadiusWithClipRRect(60),
                title: Text(
                  chatModel![index].name ?? "",
                  style: GoogleFonts.poppins(
                    textStyle: boldTextStyle(),
                  ),
                ),
                subtitle: Text(
                  "How are you today?",
                  style: primaryTextStyle(),
                ),
                trailing: SizedBox(
                  height: 60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "2 Min ago",
                        style: secondaryTextStyle(),
                      ),
                      Container(
                        child: Text(
                          "2",
                          style: boldTextStyle(size: 12, color: Colors.white),
                        ),
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                ThemeClass.primaryColor,
                                ThemeClass.primaryColor
                              ],
                            )),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
