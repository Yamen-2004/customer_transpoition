import 'package:customer_transpoition/widget/cityPoints/karak.dart';
import "package:flutter/material.dart";

class karak_points extends StatelessWidget {

  karak_points({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('مجمعات الكرك'),
        ),
        body: const Column(children: [
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: karakpoints(),
          )
        ]));
  }
}
