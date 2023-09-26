import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class coustomTextFeild extends StatelessWidget {
  const coustomTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: " Title",
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
