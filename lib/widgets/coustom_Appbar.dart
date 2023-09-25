import 'package:flutter/material.dart';
import 'package:notes_app/widgets/coutom_Buttom.dart';

class coustomAppBar extends StatelessWidget {
  const coustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Note",
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        Spacer(),
        coustomButtom(),
      ],
    );
  }
}
