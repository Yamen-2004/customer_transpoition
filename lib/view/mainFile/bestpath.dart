import 'package:flutter/material.dart';

class bestPath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String currentLocation = '';
    String destination = '';
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('أفضل مسار'),
        ),
        body: ListView(children: [
          Center(
              child: Container(
                  margin: const EdgeInsets.only(top: 200),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.grey,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          hintText: 'موقعك الحالي',
                        ),
                        onChanged: (value) {
                          currentLocation = value;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.grey,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          hintText: 'الوجهة',
                        ),
                        onChanged: (value) {
                          destination = value;
                        },
                      ),
                      Container(
                        width: 200,
                        height: 50,
                        margin: const EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: const Color.fromARGB(255, 95, 60, 47),
                            elevation: 20,
                            primary: const Color(0xff799C90),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    backgroundColor: const Color(0xff799C90),
                                    title: const Center(
                                        child: Text('المسار',
                                            style: TextStyle(
                                                fontSize: 40,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 95, 60, 47)))),
                                    content: Container(
                                      padding: const EdgeInsets.all(20),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          color: Colors.white,
                                          border: Border.all(
                                              color: Colors.black, width: 0)),
                                      height: 300,
                                      child: const Column(
                                        children: [
                                          Text(
                                            'كفراسد   -> مجمع الأغوار الجديد  -> إشارة النسيم  -> أيدون',
                                            textAlign: TextAlign.end,
                                          ),
                                          SizedBox(
                                            height: 50,
                                          ),
                                          Text("التكلفة : 0.75 دينار",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 95, 60, 47)),
                                              textAlign: TextAlign.end),
                                        ],
                                      ),
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('حسنا',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 95, 60, 47))),
                                      ),
                                    ],
                                  );
                                });
                          },
                          child: const Text('ابحث'),
                        ),
                      )
                    ],
                  ))),
        ]));
  }
}
