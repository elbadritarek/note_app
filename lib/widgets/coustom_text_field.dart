import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class coustomTextFeild extends StatelessWidget {
  const coustomTextFeild(
      {super.key, required this.hintText, this.maxLines = 1});
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: KprimaryColor),
        enabledBorder: BulderReduis(),
        focusedBorder: BulderReduis(color: KprimaryColor),
        border: BulderReduis(),
      ),
    );
  }

  OutlineInputBorder BulderReduis({color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
