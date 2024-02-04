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

// ignore: must_be_immutable
class AppBars extends AppBar {
  String cltitle;
  AppBars(this.cltitle, {super.key})
      : super(
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.lightBlue,
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
