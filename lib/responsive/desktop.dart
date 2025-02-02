import 'package:flutter/material.dart';
import 'package:responsivedesign/constants.dart';

class Desktop extends StatefulWidget {
  const Desktop({super.key});

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar,
        body: Row(
          children: [
            // open drawer
            myDrawer

            //rest of body
          ],
        ),
        backgroundColor: myDefaultBackground);
  }
}
