import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minihack/custom_widgets/trainer_box.dart';
import 'package:minihack/utilities/all.dart';
import 'package:minihack/utilities/constants.dart';
import 'package:minihack/screens/pay.dart';

class TrainerPage extends StatefulWidget {
  static const routeName = "d";
  final String selectedFeature;

  TrainerPage({this.selectedFeature});

  @override
  _TrainerPageState createState() => _TrainerPageState();
}

class _TrainerPageState extends State<TrainerPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            '${widget.selectedFeature} Trainers list',
            style: GoogleFonts.staatliches(
              textStyle: kNormalText.copyWith(letterSpacing: 2.0),
            ),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: kAppBarColor,
        ),
        body: ListView.builder(
          itemCount: data[widget.selectedFeature].length,
          itemBuilder: (context, i) => GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Pay(
                    number: data[widget.selectedFeature][i]["number"],
                  ),
                ),
              );
            },
            child: TrainerBox(
              free: data[widget.selectedFeature][i]["free"],
              gender: data[widget.selectedFeature][i]["gender"],
              lang: data[widget.selectedFeature][i]["lang"],
              name: data[widget.selectedFeature][i]["name"],
              number: data[widget.selectedFeature][i]["number"],
              price: data[widget.selectedFeature][i]["price"],
              rating: data[widget.selectedFeature][i]["rating"],
            ),
          ),
        ),
      ),
    );
  }
}
