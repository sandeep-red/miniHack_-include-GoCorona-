import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:minihack/screens/select_features_page.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minihack/custom_widgets/buttons.dart';
import 'package:minihack/utilities/constants.dart';

class HomePage2 extends StatefulWidget {
  static const routeName = "c";

  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Stack(
                children: [
                  Container(
                    height: 340,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.elliptical(240.0, 340.0),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: GradientColors.skyLine,
                        stops: [0.2, 0.9],
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 320.0,
                      child: Carousel(
                        dotBgColor: Colors.black.withOpacity(0.0001),
                        images: [
                          Image.asset('images/2.png', width: 280, height: 280),
                          Image.asset('images/1.png', width: 280, height: 280),
                          Image.asset('images/3.png', width: 280, height: 280),
                          Image.asset('images/4.png', width: 280, height: 280),
                          Image.asset('images/5.png', width: 280, height: 280),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'We make sure you don\'t miss out on your workouts even in this lockdown !!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.staatliches(
                      textStyle: kHugeText,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Button(
                  onPressed: () {
                    Navigator.pushNamed(context, SelectFeaturesPage.routeName);
                  },
                  text: 'LET\'S GO',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
