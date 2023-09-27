import 'package:flutter/material.dart';
import 'package:notes_app/widgets/coustom_Appbar.dart';
import 'package:notes_app/widgets/coustom_text_field.dart';

class EdttingNoteViewBody extends StatelessWidget {
  const EdttingNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(height: 50),
          coustomAppBar(
            icon: Icons.check,
            title: "Edti Note",
          ),
          SizedBox(
            height: 50,
          ),
          coustomTextFeild(hintText: "Title"),
          SizedBox(
            height: 16,
          ),
          coustomTextFeild(
            hintText: "Contant",
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
