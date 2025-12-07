import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/nots_cubit.dart';

import 'package:note_app/views/widgets/custom_app_bar.dart';

import 'package:note_app/views/widgets/note_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(height: 50),
          CustomAppBar(text: 'Notes', icon: Icons.search),
          SizedBox(height: 50),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: NotesListView(),
            ),
          ),
        ],
      ),
    );
  }
}
