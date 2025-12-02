import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';

class EdiNotetViewBody extends StatelessWidget {
  const EdiNotetViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children:const [
          SizedBox(height: 50),
          CustomAppBar(text: 'Edit Note', icon: Icons.check),
        ],
      ),
    );
  }
}
