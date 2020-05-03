import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minihack/utilities/constants.dart';
import 'package:minihack/custom_widgets/buttons.dart';

class Connect extends StatefulWidget {
  static const routeName = 'f';
  final number;

  Connect({this.number});

  @override
  _ConnectState createState() => _ConnectState();
}

class _ConnectState extends State<Connect> {
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'images/c1.png',
              width: 100,
              height: 100,
            ),
            Image.asset(
              'images/c23.png',
              width: 100,
              height: 100,
            ),
            Button(
              onPressed: () async {
                List<Application> apps =
                    await DeviceApps.getInstalledApplications();
                debugPrint(apps.toString());
              },
              text: 'dummy',
            ),
          ],
        ),
      ),
    );
  }
}
