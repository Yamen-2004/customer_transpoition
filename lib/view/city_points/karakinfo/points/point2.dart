import 'package:customer_transpoition/MC/controller/controller/karak.dart';
import 'package:customer_transpoition/MC/controller/model/karak.dart';
import 'package:customer_transpoition/widget/future/future2.dart';

import 'package:flutter/material.dart';

class karakpoint2 extends StatefulWidget {
  const karakpoint2({super.key});

  @override
  _karakpoint2 createState() => _karakpoint2();
}

class _karakpoint2 extends State<karakpoint2> {
  late Future<List<karak>> tasks;
  List data = [];

  final karakInfoData _karakInfo = karakInfoData();
  void initState() {
    super.initState();
    tasks = _karakInfo.fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('مجمع الكرك الخارجي'),
        ),
        body: future2(tasks: tasks, data: data, i: 0));
  }
}
