import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;
  const NewTransaction({super.key, required this.addTx});

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final TextEditingController titleCtrl = TextEditingController();

  final TextEditingController amountCtrl = TextEditingController();

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
                keyboardType: TextInputType.number,
                onSubmitted: (_) => submt(),
              ),
              Align(
                alignment: Alignment.topRight,
                child: TextButton.icon(
                    onPressed: submt,
                    icon: const Icon(Icons.add),
                    label: const Text("Add..")),
              )
            ],
          )),
    );
  }

  void submt() {
    widget.addTx(titleCtrl.text, int.parse(amountCtrl.text));

    Navigator.of(context).pop();
  }
}
