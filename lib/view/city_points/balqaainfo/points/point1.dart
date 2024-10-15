import 'package:customer_transpoition/MC/controller/controller/balqaa.dart';
import 'package:customer_transpoition/MC/controller/model/balqaa.dart';
import 'package:customer_transpoition/widget/future/future1.dart';

import 'package:flutter/material.dart';

class balqaapoint1 extends StatefulWidget {
  const balqaapoint1({super.key});

  @override
  _balqaapoint1 createState() => _balqaapoint1();
}

class _balqaapoint1 extends State<balqaapoint1> {
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
          title: Text('مجمع السلط الخارجي'),
        ),
        body: future1(tasks: tasks, data: data, i: 0));
  }
}
