import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  final title;
  final description;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.white54,
          ),
        ),
        Text(
          description,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
