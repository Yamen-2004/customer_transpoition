import 'package:customer_transpoition/MC/controller/controller/amman.dart';
import 'package:customer_transpoition/MC/controller/model/amman.dart';
import 'package:customer_transpoition/widget/waiting.dart';

import 'package:flutter/material.dart';

class janoob extends StatefulWidget {
  const janoob({super.key});

  @override
  _janoob createState() => _janoob();
}

class _janoob extends State<janoob> {
  late Future<List<amman>> tasks;
  List data = [];
  List point2 = [];

  final ammanInfoData _ammanInfo = ammanInfoData();
  void initState() {
    super.initState();
    tasks = _ammanInfo.fetchdata();
  }

  void _runFilter(String enteredKeyword) {
    List results = [];
    if (enteredKeyword.isEmpty) {
      results = data;
    } else {
      results = data
          .where((point1) =>
              point1.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      point2 = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('مجمع الجنوب الحديد'),
      ),
      body: FutureBuilder(
        future: tasks,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            data = snapshot.data![0].point3;
            point2 = data;

            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      hintText: 'Search',
                      focusColor: Colors.grey,
                      hoverColor: Colors.grey,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                      prefixIcon: Icon(Icons.search, color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                    ),
                    onChanged: (value) => _runFilter(value),
                  ),
                  Expanded(
                    child: !point2.isEmpty
                        ? ListView.builder(
                            itemCount: point2.length,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 80,
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  point2[index],
                                  textDirection: TextDirection.rtl,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                              );
                            },
                          )
                        : const Center(
                            child: Text(
                                'Search for a point you want to know about'),
                          ),
                  )
                ],
              ),
            );
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return Center(child: circularprogressindicator());
          }
        },
      ),
    );
  }
}
