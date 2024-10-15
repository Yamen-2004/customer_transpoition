import 'package:customer_transpoition/widget/cityPoints/aqaba.dart';
import "package:flutter/material.dart";

class aqaba_points extends StatelessWidget {

  aqaba_points({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('مجمعات العقبة'),
        ),
        body: const Column(children: [
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: aqabapoints(),
          )
        ]));
  }
}
