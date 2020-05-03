import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minihack/utilities/constants.dart';
import 'package:minihack/screens/trainer_page.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart';

class FeatureBox extends StatefulWidget {
  final feature;
  FeatureBox({@required this.feature});

  @override
  _FeatureBoxState createState() => _FeatureBoxState();
}

class _FeatureBoxState extends State<FeatureBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TrainerPage(
              selectedFeature: widget.feature,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: kFlutterBlue,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 24.0, top: 10.0, bottom: 10.0, right: 10.0),
                child: Text(
                  widget.feature,
                  style: GoogleFonts.staatliches(
                    textStyle: TextStyle(
                      fontSize: 26.0,
                      letterSpacing: 2.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
