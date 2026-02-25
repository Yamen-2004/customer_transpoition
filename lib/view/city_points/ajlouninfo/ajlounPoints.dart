import 'package:customer_transpoition/widget/cityPoints/ajloun.dart';
import "package:flutter/material.dart";

class ajloun_points extends StatelessWidget {
  ajloun_points({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('مجمعات عجلون'),
        ),
        body: const Column(children: [
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: ajlounpoints(),
          )
        ]));
  }
}
