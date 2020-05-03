import 'package:flutter/material.dart';
import 'package:minihack/screens/home_page.dart';
import 'package:minihack/screens/home_page_2.dart';
import 'package:minihack/screens/select_features_page.dart';
import 'package:minihack/screens/trainer_page.dart';
import 'package:minihack/screens/pay.dart';
import 'package:minihack/screens/connect.dart';

main() => runApp(MaterialAppWIthTheme());

class MaterialAppWIthTheme extends StatelessWidget {
  const MaterialAppWIthTheme({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gyoom',
      theme: ThemeData.dark(),
      initialRoute: HomePage.routeName,
      routes: {
        '/': (context) => HomePage(),
        HomePage.routeName: (context) => HomePage(),
        HomePage2.routeName: (context) => HomePage2(),
        SelectFeaturesPage.routeName: (context) => SelectFeaturesPage(),
        TrainerPage.routeName: (context) => TrainerPage(),
        Pay.routeName: (context) => Pay(),
        Connect.routeName : (contect) => Connect(),
      },
    );
  }
}
