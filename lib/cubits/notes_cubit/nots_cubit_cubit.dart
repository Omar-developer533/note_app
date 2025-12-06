import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';

import 'package:note_app/constsnts.dart';
import 'package:note_app/models/note_model.dart';

part 'nots_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotsCubitLoading());
  fetchAllNotes() {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      List<NoteModel> notes = notesBox.values.toList();
      emit(NotesCubitSuccess(notes));
    } catch (e) {
      emit(NotesCubitfailure(e.toString()));
    }
  }
}
