import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/models/note_modal.dart';
//import 'package:notes_app/cubits/cubit/add_note_cubit.dart';

import 'package:notes_app/simple_bloc_observer.dart';
import 'package:notes_app/views/Notes_view.dart';

import 'constants.dart';
//import 'models/Note_modal.dart';
//import 'note_modal.g.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModalAdapter());
  await Hive.openBox<NoteModal>(kNonetsBox);

  Bloc.observer = simpleBlocObserver();
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      home: const NoteView(),
    );
  }
}
