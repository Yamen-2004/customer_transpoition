import 'package:customer_transpoition/MC/controller/model/Irbid.dart';
import 'package:customer_transpoition/widget/future/future2.dart';

import '../../../../MC/controller/controller/Irbid.dart';
import 'package:flutter/material.dart';

class shamali extends StatefulWidget {
  const shamali({super.key});

  @override
  _shamali createState() => _shamali();
}

class _shamali extends State<shamali> {
  late Future<List<Irbid>> tasks;
  List data = [];

  final IrbidInfoData _irbidInfo = IrbidInfoData();
  void initState() {
    super.initState();
    tasks = _irbidInfo.fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('المجمع  الشمالي'),
        ),
        body: future2(tasks: tasks, data: data, i: 0));
  }
}
