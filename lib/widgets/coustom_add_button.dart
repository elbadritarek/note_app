import 'package:flutter/material.dart';

import '../constants.dart';

class coustomBottomAdd extends StatelessWidget {
  const coustomBottomAdd({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: KprimaryColor,
        ),
        child: Center(
          child: Text(
            "Add",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}
