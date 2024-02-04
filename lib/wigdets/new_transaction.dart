import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final TextEditingController titleCtrl = TextEditingController();
  final TextEditingController amountCtrl = TextEditingController();
  final Function addTx;
  NewTransaction({super.key, required this.addTx});

  // NewTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: Colors.cyan)),
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(labelText: "Title Name"),
                controller: titleCtrl,
              ),
              TextField(
                decoration: const InputDecoration(labelText: "Amount Price"),
                controller: amountCtrl,
              ),
              Align(
                alignment: Alignment.topRight,
                child: TextButton.icon(
                    onPressed: () {
                      addTx(titleCtrl.text, int.parse(amountCtrl.text));
                    },
                    icon: const Icon(Icons.add),
                    label: const Text("Add..")),
              )
            ],
          )),
    );
  }
}
