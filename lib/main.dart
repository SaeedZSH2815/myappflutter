//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:myappflutter/wigdets/aListView.dart';
import 'package:myappflutter/wigdets/new_transaction.dart';
import 'package:myappflutter/wigdets/test.dart';
import './wigdets/customappbar.dart';
import './wigdets/user_transaction.dart';
import './models/treansaction.dart';
import './wigdets/transactionlist.dart';
import './wigdets/NoTransList.dart';
import './wigdets/chart.dart';
//import 'dart:convert' as convert;
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
//import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final ThemeData theme = ThemeData();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FirstApp",
      theme: ThemeData(
          fontFamily: 'OpenSans',
          textTheme: TextTheme(titleSmall: TextStyle(color: Colors.amber))),
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
  final ScrollController clController = ScrollController();
  List aItem = List.generate(15, (index) {
    return 'Item${index}';
  });
  int clPage = 0;

  @override
  void dispose() {
    clController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    fetch();
    clController.addListener(() {
      if (clController.position.maxScrollExtent == clController.offset) {
        fetch();
      }
    });
  }

  Future fetch() async {
    final url = Uri.parse(
        "https://jsonplaceholder.typicode.com/posts?_limit=25&_page=${clPage}");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List newItemList = convert.jsonDecode(response.body);

      setState(() {
        clPage++;
        aItem.addAll(newItemList.map<String>((e) {
          final number = e['id'];
          return 'item$number';
        }).toList());
      });

      ///print(newItemList.toString());
    }
  }

  final List<Transaction> translist = [
    Transaction(
        tId: 1,
        tTitle: "Shoes",
        tAmount: 100002,
        tDate: DateTime.now().add(Duration(days: -15))),
    Transaction(
        tId: 2,
        tTitle: "Cloeth",
        tAmount: 2000,
        tDate: DateTime.now().add(Duration(days: 15))),
    Transaction(
        tId: 3,
        tTitle: "Cars",
        tAmount: 1500,
        tDate: DateTime.now().add(Duration(days: 3)))
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

  List<Transaction> getTransList() {
    return translist.where((tx) {
      return tx.tDate.isAfter(DateTime.now().subtract(const Duration(days: 7)));
    }).toList();
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
    // fetch();
    return Scaffold(
      appBar: AppBars(
          clTx: context,
          cltitle: aItem.length.toString(),
          clColor: Theme.of(context).primaryColor),
      body: translist.length < 4
          //  ? TransactionList(userTransList: translist)
          ? SingleChildScrollView(
              child: Column(children: [
                AListView(
                  clItemList: aItem,
                  clcontroller: clController,
                ),
              ]),
            )
          : SingleChildScrollView(
              child: Column(
              children: [
                Chart(listTrans: getTransList()),
                TransactionList(userTransList: translist),
              ],
            )),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          //startAddNewTransaction(context);
          //setState(() {
          //  clPage++;
          fetch();
        },
      ),
    );
  }
}
