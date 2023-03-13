import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Pages/Home_page.dart';
import 'package:whatsapp_ui/utils/routes.dart';
import 'package:whatsapp_ui/Pages/Home_page.dart';
import 'package:whatsapp_ui/Pages/Login_page.dart';
import 'package:whatsapp_ui/utils/routes.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(const whatsapp());
}

class whatsapp extends StatelessWidget {
  const whatsapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      // theme: ThemeData(
      //   fontFamily: GoogleFonts.lato().fontFamily,
      // ),
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => Loginpage(),
        // "/home": (context) => HomeScreen()
        MyRoutes.homeRoute: (context) => HomeScreen(),
        MyRoutes.loginRoute: (context) => Loginpage(),
      },
    );
  }
}
