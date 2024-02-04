import 'package:flutter/material.dart';
import '../models/treansaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> userTransList;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: userTransList.map((e) {
        return Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 2)),
              child: Text(e.tAmount.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.purple)),
            ),
            Column(
              children: [
                Text(
                  e.tTitle,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(DateFormat().format(e.tDate))
              ],
            )
          ],
        );
      }).toList(),
    ));
  }

  TransactionList({super.key, required this.userTransList});
}
