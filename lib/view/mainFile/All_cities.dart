import 'package:flutter/material.dart';

import '../../widget/city/allcities.dart';

// widget from the city folder

class city_option extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 228, 226, 226),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('المحافظات'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Expanded(child: cities_card()),
          ],
        ));
  }
}
