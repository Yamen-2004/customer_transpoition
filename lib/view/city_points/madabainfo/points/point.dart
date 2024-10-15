import 'package:customer_transpoition/MC/controller/controller/madaba.dart';
import 'package:customer_transpoition/MC/controller/model/madaba.dart';
import 'package:customer_transpoition/widget/future/future1.dart';

import 'package:flutter/material.dart';

class madabapoint1 extends StatefulWidget {
  const madabapoint1({super.key});

  @override
  _madabapoint1 createState() => _madabapoint1();
}

class _madabapoint1 extends State<madabapoint1> {
  late Future<List<madaba>> tasks;
  List data = [];

  final madabaInfoData _madabaInfo = madabaInfoData();
  void initState() {
    super.initState();
    tasks = _madabaInfo.fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('مجمع مادبا الشمالي'),
        ),
        body: future1(tasks: tasks, data: data, i: 0));
  }
}
