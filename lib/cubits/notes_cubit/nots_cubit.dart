import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';

import 'package:note_app/constsnts.dart';
import 'package:note_app/models/note_model.dart';

part 'nots_cubit_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);

    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }
}
