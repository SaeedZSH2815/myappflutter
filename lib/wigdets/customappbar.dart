import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({super.key})
      : super(
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
          title: const Text("_title"),
          elevation: 0.0,
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () => {},
            ),
          ],
        );
}

// ignore: must_be_immutable
class AppBars extends AppBar {
  Color clColor;
  String cltitle;
  AppBars({required this.cltitle,required this.clColor, super.key})
      : super(
          foregroundColor: Colors.amber,
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: clColor,
          title: Text(cltitle),
          elevation: 0.0,
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () => {},
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () => {null},
            ),
          ],
        );
}
