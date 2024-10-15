import 'package:customer_transpoition/MC/controller/controller/madaba.dart';
import 'package:customer_transpoition/MC/controller/model/madaba.dart';
import 'package:customer_transpoition/widget/future/future2.dart';

import 'package:flutter/material.dart';

class madabapoint2 extends StatefulWidget {
  const madabapoint2({super.key});

  @override
  _madabapoint2 createState() => _madabapoint2();
}

class _madabapoint2 extends State<madabapoint2> {
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
          title: Text('مجمع مادبا الجنوبي'),
        ),
        body: future2(tasks: tasks, data: data, i: 0));
  }
}
