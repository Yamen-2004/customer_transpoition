import 'package:customer_transpoition/widget/cityPoints/madaba.dart';
import "package:flutter/material.dart";

class madaba_points extends StatelessWidget {

  madaba_points({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('مجمعات مادبا'),
        ),
        body: const Column(children: [
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: madabapoints(),
          )
        ]));
  }
}
