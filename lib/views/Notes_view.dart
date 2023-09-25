import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NoteViewBody(),
    );
  }
}
