import 'package:customer_transpoition/widget/cityPoints/maan.dart';
import "package:flutter/material.dart";

class maan_points extends StatelessWidget {
  maan_points({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('مجمعات معان'),
        ),
        body: const Column(children: [
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: maanpoints(),
          )
        ]));
  }
}
