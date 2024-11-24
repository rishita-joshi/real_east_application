import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:techcoder_real_easte/utils/themeclass.dart';
import '../components/chat_messge_components.dart';
import '../main.dart';
import '../model/messege_model.dart';
import '../utils/text_style.dart';

class ChatDetailsScreen extends StatefulWidget {
  ChatDetailsScreen(
      {super.key,
      required this.groupId,
      required this.recevierId,
      required this.name});
  final String groupId;
  final String recevierId;
  final String name;

  @override
  ChatDetailsScreenState createState() => ChatDetailsScreenState();
}

class ChatDetailsScreenState extends State<ChatDetailsScreen> {
  @override
  void initState() {
    super.initState();
    appStore.addMessgaeChat();
  }

  ScrollController scrollController = ScrollController();
  TextEditingController msgController = TextEditingController();
  FocusNode msgFocusNode = FocusNode();

  var personName = '';

  sendClick() async {
    print("recvier id ${widget.recevierId}");
    if (msgController.text.trim().isNotEmpty) {
      hideKeyboard(context);
      //if (mounted) scrollController.animToTop();
    }
    appStore.messgeChat.add(MessageChat(
        idFrom: "1",
        idTo: "2",
        timestamp: "",
        content: msgController.text,
        type: 2));

    setState(() {
      msgController.text = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0.3,
          //iconTheme: IconThemeData(color: textPrimaryColorGlobal),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.call)),
            SizedBox(width: 10),
            IconButton(onPressed: () {}, icon: Icon(Icons.video_camera_back)),
            SizedBox(width: 10),
          ],
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(widget.name, style: boldTextStyle(size: 18)),
              SizedBox(width: 8),
            ],
          ),
        ),
        body: Stack(
          children: [
            ListView.builder(
              shrinkWrap: true,
              reverse: false,
              controller: scrollController,
              itemCount: appStore.messgeChat.length,
              padding: EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 70),
              itemBuilder: (_, index) {
                return ChatMessageComponent(
                    isMe: appStore.messgeChat[index].idFrom == "1",
                    data: appStore.messgeChat[index]);
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding:
                    EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
                decoration: BoxDecoration(),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                        onPressed: () {
                          showShareBottomSheet(context);
                        },
                        icon: Icon(Icons.attach_file)),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        controller: msgController,
                        focusNode: msgFocusNode,
                        autofocus: false,
                        textCapitalization: TextCapitalization.sentences,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Type a message',
                          hintStyle: primaryTextStyle(),
                          fillColor: Colors.black12,
                          // Colors.grey.shade200,
                          filled: true,
                        ),
                        style: primaryTextStyle(),
                      ),
                    ),
                    SizedBox(width: 8),
                    InkWell(
                        onTap: () {
                          sendClick();
                        },
                        child: Icon(
                          Icons.send_outlined,
                          color: ThemeClass.primaryColor,
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }

  showShareBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(26.0),
      ),
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(20.0),
                  topRight: const Radius.circular(20.0))),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                                Text("Share Content", style: boldTextStyle()),
                          )),
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.close,
                              color: Colors.grey,
                            )),
                      )
                    ],
                  ),
                  ListTile(
                    subtitle: Text(
                      "Share Capture photos",
                      style: secondaryTextStyle(),
                    ),
                    onTap: () async {
                      //  Navigator.of(context).pop();
                    },
                    leading: Icon(Icons.camera),
                    title: Text("Camera", style: boldTextStyle()),
                  ),
                  Divider(),
                  // ListTile(
                  //   onTap: () async {
                  //     List<File> file = await pickDocument();
                  //     ImageGallery(
                  //       imageFileList: file,
                  //       receiverId: widget.recevierId,
                  //       receiverName: widget.name,
                  //     ).launch(context);
                  //     //  Navigator.of(context).pop();
                  //   },
                  //   leading: Image.asset(ImageConstant.ic_doc_bottom),
                  //   title: Text("Documents", style: boldTextStyle()),
                  //   subtitle: Text("Share your files"),
                  // ),
                  // Divider(),
                  ListTile(
                    onTap: () async {
                      //     ImageGallery(
                      //       imageFileList: file,
                      //       receiverId: widget.recevierId,
                      //       receiverName: widget.name,
                      //     ).launch(context);
                      //     //  Navigator.of(context).pop();
                      //   },
                      //   leading: Image.asset(ImageConstant.ic_doc_bottom),
                      //   title: Text("Documents", style: boldTextStyle()),
                      //   subtitle: Text("Share your files"),
                      // ),
                      // File files = await pickMediaFromBrowse();
                      // if (files.toString().split('/').last.contains(".pdf")) {
                      //   print("call pdf data");
                      //   DocumentDetails(
                      //     imagePath: files,
                      //     receiverId: widget.recevierId,
                      //     receiverName: widget.name,
                      //   ).launch(context);
                      //   // Navigator.of(context).pop();
                      // } else {
                      //   print("call camera screen");
                      //   CameraDetailsPage(
                      //     imagePath: files,
                      //     receiverId: widget.recevierId,
                      //     receiverName: widget.name,
                      //   ).launch(context);

                      //   // Navigator.of(context).pop();
                      // }
                    },
                    //leading: Image.asset(ImageConstant.ic_camera_bottom),
                    title: Text("Media", style: boldTextStyle()),
                    subtitle: Text(
                      "Share photos and videos",
                      style: secondaryTextStyle(),
                    ),
                  ),
                ],
              )),
        );
      },
    );
  }
}
