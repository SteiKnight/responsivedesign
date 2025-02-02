import 'package:flutter/material.dart';
import 'package:responsivedesign/responsive/desktop.dart';
import 'package:responsivedesign/responsive/mobile.dart';
import 'package:responsivedesign/responsive/responsive_layout.dart';
import 'package:responsivedesign/responsive/tablet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
          mobile: const Mobile(),
          tablet: const Tablet(),
          desktop: const Desktop()),
    );
  }
}
