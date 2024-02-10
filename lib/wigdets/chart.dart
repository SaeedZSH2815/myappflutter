import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myappflutter/models/treansaction.dart';
import 'package:myappflutter/wigdets/chartbar.dart';

class Chart extends StatelessWidget {
  const Chart({required this.listTrans, super.key});

  final List<Transaction> listTrans;

  List<Map<String, Object>> get getGroupedTransValues {
    return List.generate(7, (index) {
      final weekday = DateTime.now().subtract(Duration(days: index));

      int totalAmount = 0;
      for (var i = 0; i < listTrans.length; i++) {
        if (listTrans[i].tDate.day == weekday.day &&
            listTrans[i].tDate.month == weekday.month) {
          totalAmount += listTrans[i].tAmount;
        }
      }

      return {'days': DateFormat.E().format(weekday), 'amounts': totalAmount};
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    print(getGroupedTransValues.toString());
    return Card(
        elevation: 6,
        margin: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: getGroupedTransValues.map((e) {
            return Flexible(
              fit: FlexFit.tight,
              child: ChartBar(
                  label: e['days'].toString(),
                  spendingAmount: 152,
                  spendingPctofTotal: 125),
            );
          }).toList(),
        ));
  }
}
