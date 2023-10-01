import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/add_note_cubit.dart';
import 'package:notes_app/models/Note_Modal.dart';
//import 'package:notes_app/models/note_modal.dart';
import 'package:notes_app/widgets/coustom_add_button.dart';
import 'package:notes_app/widgets/coustom_text_field.dart';

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
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return coustomBottomAdd(
                isLoding: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (fronKey.currentState!.validate()) {
                    fronKey.currentState!.save();
                    var noteModel = NoteModal(
                        title: title!,
                        subTitle: subTitle!,
                        date: DateTime.now().toString(),
                        color: Colors.blue.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
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
