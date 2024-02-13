import 'package:flutter/material.dart';
import 'package:myappflutter/wigdets/ButtonWidget/aTextFieldWidget.dart';
import '../wigdets/TextField/aTextField.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  Widget g() {
    return Row(
      children: [
        Icon(Icons.arrow_back),
        Expanded(child: SizedBox()),
        Icon(Icons.account_box),
        Text("Some ", maxLines: 1), // ➜ This is the text.
      ],
    );
  }

  Widget g1() {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            flex: 3,
            fit: FlexFit.tight,
            child: Container(
              height: 100,
              //width: 10,
              color: Colors.red,
              child: Text("dsfdsf dfdsf data"),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: Container(
              height: 100,
              color: Colors.green,
              child: Text("data"),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: Container(
              height: 100,
              color: Colors.blue,
              child: Text("Alta"),
            ),
          ),
        ],
      ),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 100,
            //width: 10,
            color: Colors.red,
            child: Text("dsfdsf dfdsf data"),
          ),
          Expanded(
            child: Container(
              height: 100,
              color: Colors.green,
              child: Text("data"),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              color: Colors.blue,
              child: Text("Altafdffdgdfgfd"),
            ),
          ),
        ],
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return ATextFormField(
      clCaption: "Click1",
      clOnPressed: () {},
    );

    // Container(
    //   height: 60,
    //   width: 10,
    //   child: Stack(
    //     children: [
    //       Container(
    //         decoration: BoxDecoration(
    //             border: Border.all(
    //                 color: Color.fromARGB(255, 12, 0, 0), width: 1.0),
    //             color: Color.fromARGB(200, 200, 200, 1),
    //             borderRadius: BorderRadius.circular(10)),
    //       ),
    //       FractionallySizedBox(
    //         heightFactor: 1,
    //         child: Container(
    //           decoration: BoxDecoration(
    //             border: Border.all(
    //                 color: Color.fromARGB(255, 12, 0, 0), width: 1.0),
    //             color: Colors.white,
    //           ),
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}
