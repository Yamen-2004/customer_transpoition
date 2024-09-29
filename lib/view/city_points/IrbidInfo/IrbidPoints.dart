import "package:flutter/material.dart";
import '../../../widget/cityPoints/Irbid.dart';
// widget from the cityPoints(Irbid) folder

// ignore:  must_be_immutable
class irbid_points extends StatelessWidget {
  double hight = 194;

  irbid_points({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('مجمعات اربد'),
        ),
        body: const Column(children: [
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: irbidpoint1(),
          )
        ]));
  }
}
