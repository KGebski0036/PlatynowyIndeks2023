import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:platynowy_indeks_2023/models/inmate.dart';

class UserCircleAvatar extends StatelessWidget {
  final Inmate user;

  const UserCircleAvatar(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.green[300],
      child: CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        radius: 24,
        child: Text(
          user.name,
          maxLines: 1,
          style: GoogleFonts.roboto(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onSecondary,
          ),
        ),
      ),
    );
  }
}
