import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Note_view_body.dart';
import 'package:notes_app/widgets/add_note_button_sheet.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: const BeveledRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16))),
            context: context,
            builder: (context) {
              return const AddNoteActionButton();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const NoteViewBody(),
    );
  }
}
