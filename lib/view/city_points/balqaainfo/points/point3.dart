import 'package:customer_transpoition/MC/controller/controller/balqaa.dart';
import 'package:customer_transpoition/MC/controller/model/balqaa.dart';
import 'package:customer_transpoition/widget/future/future3.dart';

import 'package:flutter/material.dart';

class balqaapoint3 extends StatefulWidget {
  const balqaapoint3({super.key});

  @override
  _balqaapoint3 createState() => _balqaapoint3();
}

class _balqaapoint3 extends State<balqaapoint3> {
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
          title: Text('مجمع دير علا'),
        ),
        body: future3(tasks: tasks, data: data, i: 0));
  }
}
