import 'package:flutter/material.dart';
import 'package:myappflutter/wigdets/new_transaction.dart';
import './wigdets/customappbar.dart';
import './wigdets/user_transaction.dart';
import './models/treansaction.dart';
import './wigdets/transactionlist.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});
  final ThemeData theme = ThemeData();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FirstApp",
      theme: ThemeData(
        fontFamily: 'OpenSans',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

  void startAddNewTransaction(BuildContext clCtx) {
    showModalBottomSheet(
        context: clCtx,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            behavior: HitTestBehavior.deferToChild,
            child: NewTransaction(addTx: addNewTrans),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBars(cltitle: "retert", clColor: Theme.of(context).primaryColor),
      body: translist.length < 3
          ? NoTransList()
          : SingleChildScrollView(
              child: TransactionList(userTransList: translist),
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          startAddNewTransaction(context);
        },
      ),
    );
  }
}
