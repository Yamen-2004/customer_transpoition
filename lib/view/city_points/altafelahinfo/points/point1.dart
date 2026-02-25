import 'package:customer_transpoition/MC/controller/controller/tafileh.dart';
import 'package:customer_transpoition/MC/controller/model/tafileh.dart';
import 'package:customer_transpoition/widget/future/future1.dart';

import 'package:flutter/material.dart';

class tafilehpoint1 extends StatefulWidget {
  const tafilehpoint1({super.key});

  @override
  _tafilehpoint1 createState() => _tafilehpoint1();
}

class _tafilehpoint1 extends State<tafilehpoint1> {
  late Future<List<tafileh>> tasks;
  List data = [];

  final tafilehInfoData _tafilehInfo = tafilehInfoData();
  void initState() {
    super.initState();
    tasks = _tafilehInfo.fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('مجمع الطفيلة الداخلي '),
        ),
        body: future1(tasks: tasks, data: data, i: 0));
  }
}
