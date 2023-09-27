import 'package:flutter/material.dart';
import 'package:notes_app/widgets/coustom_add_button.dart';
import 'package:notes_app/widgets/coustom_text_field.dart';

class AddNoteActionButton extends StatelessWidget {
  const AddNoteActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(child: AddNoteForm()),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> fronKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: fronKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          coustomTextFeild(
              onSaved: (data) {
                title = data;
              },
              hintText: "Title"),
          const SizedBox(
            height: 14,
          ),
          coustomTextFeild(
              onSaved: (data) {
                subTitle = data;
              },
              hintText: "Content",
              maxLines: 5),
          const SizedBox(
            height: 14,
          ),
          coustomBottomAdd(
            onTap: () {
              if (fronKey.currentState!.validate()) {
                fronKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 55,
          )
        ],
      ),
    );
  }
}
