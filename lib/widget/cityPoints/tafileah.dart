import 'package:customer_transpoition/widget/position.dart';
import 'package:flutter/material.dart';

class tafilahPoints extends StatefulWidget {
  const tafilahPoints({super.key});

  @override
  _tafilahPoints createState() => _tafilahPoints();
}

class _tafilahPoints extends State<tafilahPoints> {
  List pictures = [
    "assets/amman/almahata.png",
    "assets/amman/shamal.png",
  ];
  List names = [
    "مجمع الطفيلة الداخلي",
    "مجمع الطفيلة الخارجي",
  ];
  List routes = ["/tafilehPoint1", 
                 "/tafilehPoint2"];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: pictures.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          mainAxisSpacing: 0,
          crossAxisSpacing: 7,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, '${routes[index]}'),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: [
                  Stack(children: [
                    Image.asset(pictures[index],
                        fit: BoxFit.cover, height: 194, width: double.infinity),
                    position(text: names[index])
                  ]),
                ],
              ),
            ),
          );
        });
  }
}
