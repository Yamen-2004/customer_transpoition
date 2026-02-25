import 'package:customer_transpoition/MC/controller/controller/tafileh.dart';
import 'package:customer_transpoition/MC/controller/model/tafileh.dart';
import 'package:customer_transpoition/widget/future/future2.dart';

import 'package:flutter/material.dart';

class tafilehpoint2 extends StatefulWidget {
  const tafilehpoint2({super.key});

  @override
  _tafilehpoint2 createState() => _tafilehpoint2();
}

class _tafilehpoint2 extends State<tafilehpoint2> {
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
          title: Text('مجمع الطفيلة الخارجي '),
        ),
        body: future2(tasks: tasks, data: data, i: 0));
  }
}
