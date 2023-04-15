import 'package:flutter/material.dart';

Widget defaultButton({
    required VoidCallback? callback ,
    required String text,
    double width=double.infinity,
    Color color=Colors.blue,
})=>Container(
    width: width,
    color: color,
    height: 40,
    child: ElevatedButton(
      onPressed: callback,
      child: Text(
          text.toUpperCase(),
      ),
    ),
);