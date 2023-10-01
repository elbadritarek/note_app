import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/Note_modal.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  fatchAllNote(NoteModal note) async {
    emit(NoteLoading());
    try {
      var noteBox = Hive.box<NoteModal>(kNonetsBox);

      emit(NoteSuccess(noteBox.values.toList()));
    } catch (e) {
      emit(NoteFailure(e.toString()));
    }
  }
}
