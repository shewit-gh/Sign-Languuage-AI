import 'package:flutter/material.dart';

Widget bottomnav() {
  return BottomNavigationBar(
    backgroundColor: Colors.teal,
    selectedItemColor: Colors.white,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        // label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.comment)
        // label: 'drawe',
      )
    ],
  );
}
