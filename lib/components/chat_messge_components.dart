import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techcoder_real_easte/utils/text_style.dart';

import '../model/messege_model.dart';
import '../utils/themeclass.dart';

class ChatMessageComponent extends StatefulWidget {
  const ChatMessageComponent({
    Key? key,
    required this.isMe,
    required this.data,
  }) : super(key: key);

  final bool isMe;
  final MessageChat data;

  @override
  State<ChatMessageComponent> createState() => _ChatMessageComponentState();
}

class _ChatMessageComponentState extends State<ChatMessageComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment:
          widget.isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
          margin: widget.isMe
              ? EdgeInsets.only(
                  top: 3.0,
                  bottom: 3.0,
                  right: 0,
                  left: (500 * 0.25).toDouble())
              : EdgeInsets.only(
                  top: 4.0,
                  bottom: 4.0,
                  left: 0,
                  right: (500 * 0.25).toDouble(),
                ),
          decoration: BoxDecoration(
            color: !widget.isMe
                ? ThemeClass.primaryColor.withOpacity(0.55)
                : ThemeClass.primaryColor,
            //boxShadow: defaultBoxShadow(),
            borderRadius: widget.isMe
                ? BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(2),
                    bottomRight: Radius.circular(10))
                : BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(2)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              widget.data.content!,
              style: GoogleFonts.poppins(
                textStyle: secondaryTextStyle(
                    color: !widget.isMe ? Colors.black : Colors.white,
                    size: 18),
              ),
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Text(
            //   "Jhon Abraham",
            //   style: secondaryTextStyle(size: 12, color: Colors.black),
            // ),
            // Text(
            //   data.!,
            //   style: secondaryTextStyle(size: 12, color: Colors.black),
            // ),
          ],
        ),
      ],
    );
  }
}
