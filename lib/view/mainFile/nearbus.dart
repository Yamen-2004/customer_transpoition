import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:latlong2/latlong.dart' as latLng2;

class NearBus extends StatefulWidget {
  @override
  State<NearBus> createState() => _NearBusState();
}

class _NearBusState extends State<NearBus> {
  String? txt1;
  String? txt2;
  String? txt3;
  String? txt4;
  String? txt5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('أقرب  حافلة'),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              alignment: Alignment.topLeft,
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
          ],
        ),
        body: Stack(
          children: [
            Image.asset(
              'assets/images/nearbus.png',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            Positioned(
              child: GestureDetector(
                onTap: () async {
                  setState(() {
                    txt1 = "اربد - عمان";
                    txt2 = "اسلام عبيدات ";
                    txt3 = "42-123";
                    txt4 = "0599999999";
                    txt5 = "0.25";
                  });
                  openDialog();
                },
                child: Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 2.5,
                      left: MediaQuery.of(context).size.width / 2.5),
                  child: Image.asset('assets/images/bus.png'),
                ),
              ),
            ),
            Positioned(
              child: GestureDetector(
                onTap: () async {
                  setState(() {
                    txt1 = "ام قيس - اربد";
                    txt2 = "محمد ابو علي ";
                    txt3 = "42-124";
                    txt4 = "0799999999";
                    txt5 = "0.34";
                  });
                  openDialog();
                },
                child: Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 3,
                      left: MediaQuery.of(context).size.width / 3),
                  child: Image.asset('assets/images/bus.png'),
                ),
              ),
            ),
            Positioned(
              child: GestureDetector(
                onTap: () async {
                  setState(() {
                    txt1 = "كفرسوم - اربد";
                    txt2 = "يامن  بشايره ";
                    txt3 = "42-125";
                    txt4 = "0777777777";
                    txt5 = "0.43";
                  });
                  openDialog();
                },
                child: Container(
                    height: 70,
                    width: 70,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 2.5,
                        left: MediaQuery.of(context).size.width / 9),
                    child: Image.asset('assets/images/bus.png')),
              ),
            ),
            Positioned(
              child: GestureDetector(
                onTap: () async {
                  setState(() {
                    txt1 = "كفراسد - اربد";
                    txt2 = "عبدالله ابو علي ";
                    txt3 = "42-126";
                    txt4 = "0777777777";
                    txt5 = "0.40";
                  });

                  openDialog();
                },
                child: Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 10,
                      left: MediaQuery.of(context).size.width / 10),
                  child: Image.asset('assets/images/bus.png'),
                ),
              ),
            ),
            Positioned(
              child: GestureDetector(
                onTap: () async {
                  setState(() {
                    txt1 = "اربد - دوقرا";
                    txt2 = "محمد العمري ";
                    txt3 = "42-123";
                    txt4 = "0599999999";
                    txt5 = "0.34";
                  });
                  openDialog();
                },
                child: Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 20,
                      left: MediaQuery.of(context).size.width / 2),
                  child: Image.asset('assets/images/bus.png'),
                ),
              ),
            ),
            Positioned(
                bottom: 40,
                child: Container(
                  padding: EdgeInsets.all(2),
                  width: MediaQuery.of(context).size.width / 1.2,
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 10),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    """في هذه الصفحة، يمكنك العثور على الحافلات القريبة منك. عند النقر على أي حافلة، ستظهر لك معلومات تفصيلية عنها.""",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ))
          ],
        ));
  }

  Future<String?> openDialog() => showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            backgroundColor: const Color(0xff799C90),
            title: Text(
              "معلومات الحافلة",
              textDirection: TextDirection.rtl,
            ),
            content: Container(
              height: 150,
              child: Column(
                children: [
                  Text(
                    "مسار الخط : $txt1 ",
                    textDirection: TextDirection.rtl,
                  ),
                  Text(
                    "اسم المالك :  $txt2",
                    textDirection: TextDirection.rtl,
                  ),
                  Text(
                    " رقم المركبة : $txt3 ",
                    textDirection: TextDirection.rtl,
                  ),
                  Text(
                    " رقم الهاتف : $txt4 ",
                    textDirection: TextDirection.rtl,
                  ),
                  Text(
                    "التكلفة : $txt5 ",
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "حسنا",
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ));
}
