import 'package:customer_transpoition/widget/cityPoints/mafraq.dart';
import "package:flutter/material.dart";

class mafraq_points extends StatelessWidget {
  mafraq_points({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('مجمعات المفرق'),
        ),
        body: const Column(children: [
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: mafraqpoints(),
          )
        ]));
  }
}
