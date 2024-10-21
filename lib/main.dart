import 'package:app_islami/sura_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart' show FlutterNativeSplash;
import 'package:google_fonts/google_fonts.dart';
import 'hadeth_details.dart';
import 'home/home_screen.dart';

void main() {
  runApp( IslamiApp());
}

class IslamiApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
        textTheme: GoogleFonts.amiriQuranTextTheme()),
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(context) => HomeScreen(),
        SuraDetailsScreen.routeName:(context) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName:(context) => HadethDetailsScreen()
      },
    );
  }
}
