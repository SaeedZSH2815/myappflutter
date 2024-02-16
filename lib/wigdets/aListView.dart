import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AListView extends StatelessWidget {
  final List clItemList;
  final ScrollController clcontroller;

  AListView({required this.clItemList, required this.clcontroller, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      child: ListView.builder(
          controller: clcontroller,
          itemBuilder: (context, index) {
            if (index < clItemList.length) {
              return Card(
                elevation: 6,
                margin: EdgeInsets.all(5),
                child: ListTile(
                  trailing: Text("jnhj"),
                  leading: CircleAvatar(
                      radius: 30,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: FittedBox(child: Text("${index}")),
                      )),
                  title: Text(
                    clItemList[index].toString(),
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  subtitle: Text("ddd"),
                  onLongPress: () {},
                  onTap: () {
                    selectedindex = index;
                    const snackBar = SnackBar(
                      content: Text(index.toString()),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  selected: true,
                  selectedColor: Colors.black,
                  focusColor: Colors.brown,
                ),
              );
            } else {
              return Text("555");
            }
          },
          itemCount: clItemList.length + 1),
    );
    /* return Container(
      height: 400,
      child: Card(
          child: Column(
        children: userTransList.map((e) {
          return Row(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
      )),
    );
    */
  }
}
