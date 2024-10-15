import 'package:customer_transpoition/MC/controller/controller/balqaa.dart';
import 'package:customer_transpoition/MC/controller/model/balqaa.dart';
import 'package:customer_transpoition/widget/future/future2.dart';

import 'package:flutter/material.dart';

class balqaapoint2 extends StatefulWidget {
  const balqaapoint2({super.key});

  @override
  _balqaapoint2 createState() => _balqaapoint2();
}

class _balqaapoint2 extends State<balqaapoint2> {
  late Future<List<balqaa>> tasks;
  List data = [];

  final balqaaInfoData _balqaaInfo = balqaaInfoData();
  void initState() {
    super.initState();
    tasks = _balqaaInfo.fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('مجمع البقعة'),
        ),
        body: future2(tasks: tasks, data: data, i: 0));
  }
}
