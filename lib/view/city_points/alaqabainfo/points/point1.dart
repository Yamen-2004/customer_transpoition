import 'package:customer_transpoition/MC/controller/controller/aqaba.dart';
import 'package:customer_transpoition/MC/controller/model/aqaba.dart';
import 'package:customer_transpoition/widget/future/future1.dart';

import 'package:flutter/material.dart';

class aqabapoint1 extends StatefulWidget {
  const aqabapoint1({super.key});

  @override
  _aqabapoint1 createState() => _aqabapoint1();
}

class _aqabapoint1 extends State<aqabapoint1> {
  late Future<List<aqaba>> tasks;
  List data = [];

  final aqabaInfoData _aqabaInfo = aqabaInfoData();
  @override
  void initState() {
    super.initState();
    tasks = _aqabaInfo.fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('مجمع سفريات العقبة'),
        ),
        body: future1(tasks: tasks, data: data, i: 0));
  }
}
