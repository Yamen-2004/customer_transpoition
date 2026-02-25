import 'package:customer_transpoition/MC/controller/controller/mafraq.dart';
import 'package:customer_transpoition/MC/controller/model/mafraq.dart';
import 'package:customer_transpoition/widget/future/future2.dart';

import 'package:flutter/material.dart';

class mafraqpoint2 extends StatefulWidget {
  const mafraqpoint2({super.key});

  @override
  _mafraqpoint2 createState() => _mafraqpoint2();
}

class _mafraqpoint2 extends State<mafraqpoint2> {
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
          title: Text('مجمع المفرق الغربي'),
        ),
        body: future2(tasks: tasks, data: data, i: 0));
  }
}
