import 'package:flutter/material.dart';
import 'package:responsivedesign/constants.dart';
import 'package:responsivedesign/utils/my_box.dart';
import 'package:responsivedesign/utils/my_tile.dart';

class Tablet extends StatefulWidget {
  const Tablet({super.key});

  @override
  State<Tablet> createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar,
        drawer: myDrawer,
        body: Column(
          children: [
            //4 box on top
            AspectRatio(
              aspectRatio: 4,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return MyBox();
                  },
                ),
              ),
            ),

            // tiles below it
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return MyTile();
                },
              ),
            )
          ],
        ),
        backgroundColor: myDefaultBackground);
  }
}
