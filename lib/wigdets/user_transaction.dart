import 'package:flutter/material.dart';
import '../models/treansaction.dart';
import '../wigdets/transactionlist.dart';
import '../wigdets/new_transaction.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({super.key});

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> translist = [
    Transaction(tId: 1, tTitle: "Shoes", tAmount: 1000, tDate: DateTime.now()),
    Transaction(tId: 2, tTitle: "Cloeth", tAmount: 2000, tDate: DateTime.now())
  ];

  void addNewTrans(String clTitle, int clAmount) {
    setState(() {
      Transaction value = Transaction(
          tId: DateTime.now().millisecond,
          tTitle: clTitle,
          tAmount: clAmount,
          tDate: DateTime.now());
      translist.add(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        NewTransaction(addTx: addNewTrans),
        TransactionList(userTransList: translist)
      ],
    ));
  }
}
