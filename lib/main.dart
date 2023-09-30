import 'package:flutteer_test/screens/home_screen.dart';
import 'package:flutteer_test/theme/my_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName ,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        //SuraDetails.routeName: (context) => SuraDetails(),
       // AhadethDetails.routeName: (context) => AhadethDetails(),
      },
    );
  }
}


