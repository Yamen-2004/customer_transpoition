import 'package:customer_transpoition/widget/cityPoints/tafileah.dart';
import "package:flutter/material.dart";

class tafilah_points extends StatelessWidget {

  tafilah_points({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('مجمعات الطفيلة'),
        ),
        body: const Column(children: [
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: tafilahPoints(),
          )
        ]));
  }
}
