import 'package:flutter/material.dart';

class noTransList extends StatelessWidget {
  noTransList({super.key});
  var weekday = DateTime.now().subtract(Duration(days: -1, hours: 1));
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(weekday.day.toString() + "____" + weekday.hour.toString()),
        Container(
            height: 200,
            child: Image.asset(
              'assets/images/star.png',
              fit: BoxFit.fill,
            )),
      ],
    );
  }
}
