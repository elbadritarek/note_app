import 'package:flutter/material.dart';
import 'package:notes_app/widgets/coustom_text_field.dart';

class AddNoteActionButton extends StatelessWidget {
  const AddNoteActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          coustomTextFeild(hintText: "Title"),
          SizedBox(
            height: 10,
          ),
          coustomTextFeild(hintText: "Content", maxLines: 5),
        ],
      ),
    );
  }
}
