import 'package:customer_transpoition/MC/controller/controller/ajloun.dart';
import 'package:customer_transpoition/MC/controller/model/ajloun.dart';
import 'package:customer_transpoition/widget/future/future1.dart';

import 'package:flutter/material.dart';

class ajlounpoint1 extends StatefulWidget {
  const ajlounpoint1({super.key});

  @override
  _ajlounpoint1 createState() => _ajlounpoint1();
}

class _ajlounpoint1 extends State<ajlounpoint1> {
  late Future<List<ajloun>> tasks;
  List data = [];

  final ajlounInfoData _ajlounInfo = ajlounInfoData();
  void initState() {
    super.initState();
    tasks = _ajlounInfo.fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('مجمع عجلون'),
        ),
        body: future1(tasks: tasks, data: data, i: 0));
  }
}
