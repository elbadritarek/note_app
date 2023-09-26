import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/coustom_text_field.dart';

class AddNoteActionButton extends StatelessWidget {
  const AddNoteActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            coustomTextFeild(hintText: "Title"),
            SizedBox(
              height: 14,
            ),
            coustomTextFeild(hintText: "Content", maxLines: 5),
            SizedBox(
              height: 14,
            ),
            coustomBottomAdd(),
            SizedBox(
              height: 55,
            )
          ],
        ),
      ),
    );
  }
}

class coustomBottomAdd extends StatelessWidget {
  const coustomBottomAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
