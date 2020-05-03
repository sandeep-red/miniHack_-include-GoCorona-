import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minihack/utilities/constants.dart';
import 'package:minihack/custom_widgets/buttons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:device_apps/device_apps.dart';
import 'package:minihack/screens/connect.dart';

class Pay extends StatefulWidget {
  static const routeName = 'e';
  final number;

  Pay({@required this.number});

  @override
  _PayState createState() => _PayState();
}

class _PayState extends State<Pay> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'COMPLETE YOUR PAYMENT',
            style: GoogleFonts.staatliches(
              textStyle: kNormalText.copyWith(letterSpacing: 2.0),
            ),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: kAppBarColor,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'images/p1.jpg',
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Paytm number :    ${widget.number}',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.staatliches(
                          textStyle: kBigText,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(500.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'images/p2.png',
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'Gpay number :    ${widget.number}',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.staatliches(
                          textStyle: kBigText,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Button(
                onPressed: () async {
                  var url = 'tel:+91' + widget.number.toString();
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                text: 'connect with trainer',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
