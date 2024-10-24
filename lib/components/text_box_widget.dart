import 'package:flutter/material.dart';
import '../utils/themeclass.dart';

class TextBoxWidget extends StatelessWidget {
  const TextBoxWidget(
      {Key? key,
      required this.hintText,
      this.isSufix = false,
      this.isPassword = false,
      this.callback,
      this.icon,
      this.prefixWidget,
      required this.controller,
      required this.inputType,
      this.validator})
      : super(key: key);

  final String hintText;
  final bool? isSufix;
  final Function? callback;
  final IconData? icon;
  final bool isPassword;
  final TextEditingController controller;
  final Widget? prefixWidget;
  final TextInputType inputType;
  final String Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword,
        style: TextStyle(
          color: ThemeClass.greyColor,
          fontSize: 18,
        ),
        keyboardType: inputType,
        validator: validator,
        decoration: InputDecoration(
          prefixIcon: prefixWidget,
          suffixIcon: isSufix!
              ? IconButton(
                  icon: Icon(
                    icon,
                    color: ThemeClass.greyColor,
                  ),
                  onPressed: () {
                    callback!();
                    // _selectTime();
                  },
                )
              : null,
          focusColor: ThemeClass.greyColor,
          hintText: hintText,
          prefixStyle: TextStyle(color: ThemeClass.greyColor),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: ThemeClass.greyColor,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: ThemeClass.greyColor,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}

BoxDecoration boxDecoration(
    {double radius = 2,
    Color color = Colors.transparent,
    Color? bgColor,
    var showShadow = false}) {
  return BoxDecoration(
    color: bgColor,
    boxShadow: showShadow
        ? defaultBoxShadow(shadowColor: Colors.grey.withOpacity(0.2))
        : [BoxShadow(color: Colors.transparent)],
    border: Border.all(color: color),
    borderRadius: BorderRadius.all(Radius.circular(radius)),
  );
}
