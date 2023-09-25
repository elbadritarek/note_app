import 'package:flutter/material.dart';
import 'package:notes_app/widgets/coustom_Appbar.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(height: 22),
          coustomAppBar(),
        ],
      ),
    );
  }
}
