import "package:flutter/material.dart";
import '../../../widget/cityPoints/amman.dart';

// widget from the cityPoints(amman) folder

// ignore: must_be_immutable
class amman_points extends StatelessWidget {
  double hight = 194;

  amman_points({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('مجمعات عمان'),
        ),
        body: const Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Ammanpoint1(),
            )
          ],
        ));
  }
}
