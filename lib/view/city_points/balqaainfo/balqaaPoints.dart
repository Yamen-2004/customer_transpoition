import 'package:customer_transpoition/widget/cityPoints/balqaa.dart';
import "package:flutter/material.dart";

class balqaa_points extends StatelessWidget {

  balqaa_points({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('مجمعات البلقاء'),
        ),
        body: const Column(children: [
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: balqaapoints(),
          )
        ]));
  }
}
