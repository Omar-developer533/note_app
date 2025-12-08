import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/nots_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/cutom_text_field.dart';

class EdiNotetViewBody extends StatefulWidget {
  const EdiNotetViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EdiNotetViewBody> createState() => _EdiNotetViewBodyState();
}

class _EdiNotetViewBodyState extends State<EdiNotetViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(
            text: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 50),
          CustomTextField(
            hint: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          SizedBox(height: 16),
          CustomTextField(
            hint: widget.note.subTitle,
            maxLines: 5,
            onChanged: (value) {
              content = value;
            },
          ),
        ],
      ),
    );
  }
}
