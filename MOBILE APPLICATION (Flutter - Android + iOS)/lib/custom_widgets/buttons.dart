import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minihack/utilities/constants.dart';

class Button extends StatelessWidget {
  final Function onPressed;
  final String text;
  Button({@required this.onPressed, @required this.text});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          text,
          style: GoogleFonts.staatliches(
            textStyle: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              letterSpacing: 1.5,
            ),
          ),
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
      elevation: 10.0,
      fillColor: kFlutterBlue,
      splashColor: kButtonColor.withOpacity(0.5),
    );
  }
}
