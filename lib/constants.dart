import 'package:flutter/material.dart';

var myDefaultBackground = Colors.grey.shade300;

var myAppBar = AppBar(
  foregroundColor: Colors.white,
  centerTitle: true,
  backgroundColor: Colors.grey.shade900,
);

var myDrawer = Drawer(
  backgroundColor: myDefaultBackground,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        children: [
          DrawerHeader(child: Icon(Icons.favorite)),
          ListTile(
            leading: Icon(Icons.home),
            title: const Text('D A S H B O A R D'),
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: const Text('M E S S A G E'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: const Text('S E T T I N G S'),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: ListTile(
          leading: Icon(Icons.logout),
          title: const Text('L O G O U T'),
        ),
      ),
    ],
  ),
);
