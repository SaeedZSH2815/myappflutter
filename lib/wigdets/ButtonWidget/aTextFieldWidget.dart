import 'package:flutter/material.dart';

class ATextButton extends StatelessWidget {
  final Function clOnPressed;
  final String clCaption;
  ATextButton({required this.clCaption, required this.clOnPressed});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(clCaption),
    );
  }
}

class AElevatedButton extends StatelessWidget {
  final String clCaption;
  final Function aOnPressed;
  //------------------------------------------
  AElevatedButton({required this.clCaption, required this.aOnPressed});
  //-------------------------------------------

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: aOnPressed(),
      child: Text(clCaption),
    );
  }
}

class AOutlinedButton extends StatelessWidget {
  final String clCaption;
  final Function aOnPressed;
  //------------------------------------------
  AOutlinedButton({required this.clCaption, required this.aOnPressed});
  //-------------------------------------------
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: aOnPressed(),
      child: Text(clCaption),
    );
  }
}
