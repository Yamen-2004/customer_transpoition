import 'package:customer_transpoition/MC/controller/controller/mafraq.dart';
import 'package:customer_transpoition/MC/controller/model/mafraq.dart';
import 'package:customer_transpoition/widget/future/future1.dart';

import 'package:flutter/material.dart';

class mafraqpoint1 extends StatefulWidget {
  const mafraqpoint1({super.key});

  @override
  _mafraqpoint1 createState() => _mafraqpoint1();
}

class _mafraqpoint1 extends State<mafraqpoint1> {
  late Future<List<mafraq>> tasks;
  List data = [];

  final mafraqInfoData _mafraqInfo = mafraqInfoData();
  void initState() {
    super.initState();
    tasks = _mafraqInfo.fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('مجمع المفرق الشرقي'),
        ),
        body: future1(tasks: tasks, data: data, i: 0));
  }
}
