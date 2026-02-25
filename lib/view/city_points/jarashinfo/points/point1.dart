import 'package:customer_transpoition/MC/controller/controller/jarash.dart';
import 'package:customer_transpoition/MC/controller/model/jarash.dart';
import 'package:customer_transpoition/widget/future/future1.dart';

import 'package:flutter/material.dart';

class jarashpoint1 extends StatefulWidget {
  const jarashpoint1({super.key});

  @override
  _jarashpoint1 createState() => _jarashpoint1();
}

class _jarashpoint1 extends State<jarashpoint1> {
  late Future<List<jarash>> tasks;
  List data = [];

  final jarashInfoData _jarashInfo = jarashInfoData();
  void initState() {
    super.initState();
    tasks = _jarashInfo.fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('مجمع جرش الجديد'),
        ),
        body: future1(tasks: tasks, data: data, i: 0));
  }
}
