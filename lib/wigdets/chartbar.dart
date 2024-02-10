import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  const ChartBar(
      {required this.label,
      required this.spendingAmount,
      required this.spendingPctofTotal,
      super.key});

  final String label;
  final double spendingAmount;
  final double spendingPctofTotal;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('\$${spendingAmount.toStringAsFixed(0)}'),
        const SizedBox(
          height: 5,
        ),
        Container(
            height: 60,
            width: 10,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.0),
                      color: Color.fromARGB(200, 200, 200, 1),
                      borderRadius: BorderRadius.circular(20)),
                )
              ],
            )),
        const SizedBox(
          height: 4,
        ),
        Text(this.label)
      ],
    );
  }
}
