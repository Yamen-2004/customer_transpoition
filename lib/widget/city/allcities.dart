import 'package:customer_transpoition/widget/position.dart';
import 'package:flutter/material.dart';

class cities_card extends StatefulWidget {
  const cities_card({super.key});

  @override
  _cities_card createState() => _cities_card();
}

class _cities_card extends State<cities_card> {
  List pictures = [
    "assets/images/Irbid.png",
    "assets/images/amman.png",
    "assets/images/ajloun.png",
    "assets/images/jarash.png",
    "assets/images/aqaba.png",
    "assets/images/maan.png",
    "assets/images/karak.png",
    "assets/images/balqaa.png",
    "assets/images/tafelah.png",
    "assets/images/madaba.png",
    "assets/images/mafraq.png",
    "assets/images/zarqa.png",
  ];
  List names = [
    "اربد",
    "عمان",
    "عجلون",
    "جرش",
    "العقبة",
    "معان",
    "الكرك",
    "البلقاء",
    "الطفيلة",
    "مادبا",
    "المفرق",
    "الزرقاء",
  ];
  List routes = [
    "IrbidPoints",
    "AmmanPoints",
    "AjlounPoints",
    "JarashPoints",
    "AqabaPoints",
    "MaanPoints",
    "KarakPoints",
    "balqaaPoints",
    "tafilahPoints",
    "madabaPoints",
    "mafraqPoints",
    "zarqaaPoints",
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: pictures.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          mainAxisSpacing: 0,
          crossAxisSpacing: 0,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/${routes[index]}'),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: [
                  Stack(children: [
                    Image.asset(pictures[index],
                        fit: BoxFit.cover,
                        height: 197.71,
                        width: double.infinity),
                    position(text: names[index]),
                  ]),
                ],
              ),
            ),
          );
        });
  }
}
