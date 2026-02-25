import 'package:customer_transpoition/widget/cityPoints/jarash.dart';
import "package:flutter/material.dart";

class jarash_points extends StatelessWidget {

  jarash_points({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('مجمعات جرش'),
        ),
        body: const Column(children: [
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: jarashpoints(),
          )
        ]));
  }
}
