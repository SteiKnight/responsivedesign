import 'package:flutter/material.dart';
import 'package:responsivedesign/constants.dart';
import 'package:responsivedesign/utils/my_box.dart';
import 'package:responsivedesign/utils/my_tile.dart';

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
            myDrawer,

            //rest of body
            Expanded(
              flex: 3,
              child: Column(
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
            ),

            Expanded(
              child: Container(color: Colors.pink),
            )
          ],
        ),
        backgroundColor: myDefaultBackground);
  }
}
