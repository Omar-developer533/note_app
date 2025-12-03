import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constsnts.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  bool isLoading=false;
 addNote(NoteModel note) async {
  
    emit(AddNoteLoading());
    try {
      emit(AddNoteSuccess());
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      await noteBox.add(note);
    } catch (e) {
      AddNoteFailure(e.toString());
    }
  }
}
