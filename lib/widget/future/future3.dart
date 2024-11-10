import 'package:customer_transpoition/widget/waiting.dart';
import 'package:flutter/material.dart';

class future3 extends StatelessWidget {
  dynamic tasks;
  dynamic data;
  int i;
  future3({required this.tasks, required this.data, required this.i});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: tasks,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          data = (snapshot.data as List)[i].point3;

          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const TextField(
                  decoration: InputDecoration(
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
                ),
                Expanded(
                  child: !(snapshot.data as List)[i].point3.isEmpty
                      ? ListView.builder(
                          itemCount: data.length,
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
                                data[index],
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
                          child:
                              Text('Search for a point you want to know about'),
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
    );
  }
}
