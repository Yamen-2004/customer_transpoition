import 'package:customer_transpoition/MC/controller/controller/zarqaa.dart';
import 'package:customer_transpoition/MC/controller/model/zarqaa.dart';
import 'package:customer_transpoition/widget/future/future1.dart';

import 'package:flutter/material.dart';

class zarqaapoint1 extends StatefulWidget {
  const zarqaapoint1({super.key});

  @override
  _zarqaapoint1 createState() => _zarqaapoint1();
}

class _zarqaapoint1 extends State<zarqaapoint1> {
  late Future<List<zarqaa>> tasks;
  List data = [];

  final zarqaaInfoData _zarqaaInfo = zarqaaInfoData();
  void initState() {
    super.initState();
    tasks = _zarqaaInfo.fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('مجمع الأمير راشد'),
        ),
        body: future1(tasks: tasks, data: data, i: 0));
  }
}
