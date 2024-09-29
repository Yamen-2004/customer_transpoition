import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class NearBus extends StatefulWidget {
  @override
  State<NearBus> createState() => _NearBusState();
}

class _NearBusState extends State<NearBus> {
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
        body: FlutterMap(
          mapController: MapController(),
          options: MapOptions(
            center: LatLng(31.9454, 35.9284),
            zoom: 13.0,
          ),
          children: [
            TileLayer(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: ['a', 'b', 'c'],
            )
          ],
        ));
  }
}
