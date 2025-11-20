import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key, required this.task, required this.isChecked});

  final String task;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    var icon = Image.asset('assets/Checkbox.png');

    if (isChecked) {
      icon = Image.asset('assets/checked.png');
    }

    return Row(
      children: [
        icon,
        SizedBox(width: 4),
        Text(
          task,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
