import 'package:customer_transpoition/MC/controller/controller/zarqaa.dart';
import 'package:customer_transpoition/MC/controller/model/zarqaa.dart';
import 'package:customer_transpoition/widget/future/future2.dart';

import 'package:flutter/material.dart';

class zarqaapoint2 extends StatefulWidget {
  const zarqaapoint2({super.key});

  @override
  _zarqaapoint2 createState() => _zarqaapoint2();
}

class _zarqaapoint2 extends State<zarqaapoint2> {
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
          title: Text('مجمع الملك عبدالله الثاني'),
        ),
        body: future2(tasks: tasks, data: data, i: 0));
  }
}
