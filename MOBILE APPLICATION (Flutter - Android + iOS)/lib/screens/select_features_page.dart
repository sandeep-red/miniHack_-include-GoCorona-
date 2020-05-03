import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:minihack/screens/trainer_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minihack/custom_widgets/buttons.dart';
import 'package:minihack/utilities/constants.dart';
import 'package:minihack/custom_widgets/feature_box.dart';

class SelectFeaturesPage extends StatefulWidget {
  static const routeName = "b";

  @override
  _SelectFeaturesPageState createState() => _SelectFeaturesPageState();
}

class _SelectFeaturesPageState extends State<SelectFeaturesPage> {
  List<FeatureBox> featureList = [
    FeatureBox(
      feature: 'yoga',
    ),
    FeatureBox(
      feature: 'pilates',
    ),
    FeatureBox(
      feature: 'athletic',
    ),
    FeatureBox(
      feature: 'weight management',
    ),
  ];

  List<String> selectedFeatures = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Scrollbar(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Stack(
                  children: [
                    Container(
                      height: 240,
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
                      child: Image.asset('images/connect.png',
                          width: MediaQuery.of(context).size.width,
                          height: 280),
                    )
                  ],
                ),
                // SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'Choose what workout you want to carry out today from the list below',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.staatliches(
                        textStyle: kHugeText,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                featureList[0],
                featureList[1],
                featureList[2],
                featureList[3],
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
