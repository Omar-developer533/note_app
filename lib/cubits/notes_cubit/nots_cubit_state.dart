part of 'nots_cubit_cubit.dart';

sealed class NotesCubitState {}

final class NotsCubitInitial extends NotesCubitState {}

final class NotsCubitLoading extends NotesCubitState {}

final class NotesCubitfailure extends NotesCubitState {
  final String errorMessage;

  NotesCubitfailure(this.errorMessage);
}

final class NotesCubitSuccess extends NotesCubitState {
  final List<NoteModel> notes;

  NotesCubitSuccess(this.notes);
}
