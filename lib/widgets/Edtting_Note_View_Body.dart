import 'package:flutter/material.dart';
import 'package:notes_app/widgets/coustom_Appbar.dart';

class EdttingNoteViewBody extends StatelessWidget {
  const EdttingNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(height: 22),
          coustomAppBar(icon: Icons.check, title: "Edti Note"),
        ],
      ),
    );
  }
}
