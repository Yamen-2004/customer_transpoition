import 'package:customer_transpoition/MC/controller/controller/maan.dart';
import 'package:customer_transpoition/MC/controller/model/maan.dart';
import 'package:customer_transpoition/widget/future/future1.dart';

import 'package:flutter/material.dart';

class maanpoint1 extends StatefulWidget {
  const maanpoint1({super.key});

  @override
  _maanpoint1 createState() => _maanpoint1();
}

class _maanpoint1 extends State<maanpoint1> {
  late Future<List<maan>> tasks;
  List data = [];

  final maanInfoData _maanInfo = maanInfoData();
  void initState() {
    super.initState();
    tasks = _maanInfo.fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('مجمع معان'),
        ),
        body: future1(tasks: tasks, data: data, i: 0));
  }
}
