import 'package:customer_transpoition/MC/controller/controller/maan.dart';
import 'package:customer_transpoition/MC/controller/model/maan.dart';
import 'package:customer_transpoition/widget/future/future2.dart';

import 'package:flutter/material.dart';

class maanpoint2 extends StatefulWidget {
  const maanpoint2({super.key});

  @override
  _maanpoint2 createState() => _maanpoint2();
}

class _maanpoint2 extends State<maanpoint2> {
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
          title: Text('مجمع وادي موسى'),
        ),
        body: future2(tasks: tasks, data: data, i: 0));
  }
}
