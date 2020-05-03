import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minihack/utilities/constants.dart';

class TrainerBox extends StatelessWidget {
  final name;
  final lang;
  final number;
  final gender;
  final free;
  final rating;
  final price;

  TrainerBox({
    @required this.name,
    @required this.lang,
    @required this.number,
    @required this.gender,
    @required this.free,
    @required this.rating,
    @required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: kFlutterBlue.withOpacity(0.3),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  gender == 'male'
                      ? Image.asset(
                          'images/m.png',
                          width: 100,
                          height: 100,
                        )
                      : Image.asset(
                          'images/f.png',
                          width: 100,
                          height: 100,
                        ),
                  Expanded(
                    child: Text(
                      name,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.staatliches(
                        textStyle: kHugeText,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Center(
                      child: Text(
                        'Price :    ',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.staatliches(
                          textStyle: kSubHeadingText,
                        ),
                      ),
                    ),
                    Text(
                      price.toString(),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.staatliches(
                        textStyle: kBigText,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Rating :    ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.staatliches(
                        textStyle: kSubHeadingText,
                      ),
                    ),
                    Text(
                      rating.toString() + '/5',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.staatliches(
                        textStyle: kBigText,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Available :    ',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.staatliches(
                      textStyle: kSubHeadingText,
                    ),
                  ),
                  Text(
                    free,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.staatliches(
                      textStyle: kBigText,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:30.0),
                    child: Text(
                      'Ph no :    ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.staatliches(
                        textStyle: kSubHeadingText,
                      ),
                    ),
                  ),
                  Text(
                    number.toString(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.staatliches(
                      textStyle: kBigText,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
