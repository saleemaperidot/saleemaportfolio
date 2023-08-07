import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioflutter/pages/home.dart';
import 'package:portfolioflutter/utilits/constants.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'saleema portfolio',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: Theme.of(context).copyWith(
          platform: TargetPlatform.android,
          scaffoldBackgroundColor: kBagroundColor,
          primaryColor: kPrimaryColor,
          canvasColor: kBagroundColor,
          textTheme: GoogleFonts.latoTextTheme()),

      builder: (context, child) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, child!),
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.resize(800, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: TABLET),
            ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            ResponsiveBreakpoint.resize(2469, name: "4k"),
          ],
          background: Container(
            color: kBagroundColor,
          )),

      // theme: ThemeData(
      //     primarySwatch: Colors.blue,
      //     visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Home(),
    );
  }
}
