import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color colour;
  final FontWeight weight;

  const CustomText({Key? key, required this.weight,required this.size,required this.text,required this.colour}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.raleway(
        fontWeight: weight ?? FontWeight.normal,
        fontSize: size ?? 16,
        color: colour ?? Colors.black,
      ),
    );
  }
}
