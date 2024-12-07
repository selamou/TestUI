import 'dart:ffi';

import 'package:flutter/material.dart';

Widget defaultButtn({
  double width = double.infinity,
  double height = 40,
  required VoidCallback function,
  required String title,
}) =>
    Container(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: function,
        child: Text(
          title,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff648286),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        ),
      ),
    );
Widget Input({
  required final Icon icon,
  required String hint,
  final Icon? obicon,
  final bool obscure = false,
}) =>
    SizedBox(
      height: 56,
      width: 335,
      child: TextField(
          obscureText: obscure,
          style: TextStyle(fontSize: 16),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 15),
              fillColor: Color(0xfff0f3f1),
              filled: true,
              hintStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              hintText: hint,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 0, style: BorderStyle.none),
                borderRadius: BorderRadius.circular(16),
              ),
              prefixIcon: Padding(
                child: IconTheme(
                    data: IconThemeData(color: Colors.black), child: icon),
                padding: EdgeInsets.only(left: 20, right: 10),
              ),
              suffixIcon: obscure == true
                  ? Padding(
                      child: IconTheme(
                          data: IconThemeData(color: Colors.grey),
                          child: obicon!),
                      padding: EdgeInsets.only(left: 10, right: 30),
                    )
                  : null)),
    );
Widget buttonIcon({
  double width = double.infinity,
  double height = 40,
  required final Image icon,
  required VoidCallback function,
  required String title,
}) =>
    Container(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: function,
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              icon,
              Padding(
                padding: EdgeInsets.only(left: 24, right: 8),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ),
        style: ElevatedButton.styleFrom(
          foregroundColor: null,
          backgroundColor: Color(0xfff0f3f1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        ),
      ),
    );
Widget buttonIconImg({
  double width = double.infinity,
  double height = 40,
  required final Image icon,
  required VoidCallback function,
  required String title,
}) =>
    Container(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: function,
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              icon,
              Padding(
                padding: EdgeInsets.only(left: 24, right: 8),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ),
        style: ElevatedButton.styleFrom(
          foregroundColor: null,
          backgroundColor: Color(0xff648286),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        ),
      ),
    );
