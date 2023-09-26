import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Edtting_Note_View_Body.dart';

class EdttingNoteView extends StatelessWidget {
  const EdttingNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EdttingNoteViewBody(),
    );
  }
}
