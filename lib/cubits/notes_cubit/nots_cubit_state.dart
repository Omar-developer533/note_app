part of 'nots_cubit_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotsCubitInitial extends NotesCubitState {}

final class NotsCubitLoading extends NotesCubitState {}

final class NotesCubitfailure extends NotesCubitState {
  final String errorMessage;

  NotesCubitfailure(this.errorMessage);
}

final class NotsCubitSuccess extends NotesCubitState {
  final List<NoteModel> notes;

  NotsCubitSuccess(this.notes);
}
