import 'package:customer_transpoition/widget/cityPoints/zarqaa.dart';
import "package:flutter/material.dart";

class zarqaa_points extends StatelessWidget {

  zarqaa_points({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('مجمعات الزرقاء'),
        ),
        body: const Column(children: [
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: zarqaapoints(),
          )
        ]));
  }
}
