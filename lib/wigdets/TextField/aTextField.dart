import 'package:flutter/material.dart';

class ATextFormField extends StatelessWidget {
  final Function clOnPressed;
  final String clCaption;
  ATextFormField({required this.clCaption, required this.clOnPressed});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: const InputDecoration(
      icon: Icon(Icons.person),
      suffixText: "145",
      prefixText: "jhkjhkh",
      hintText: 'What do people call you?',
      labelText: 'Name *',
    ));
  }
}
