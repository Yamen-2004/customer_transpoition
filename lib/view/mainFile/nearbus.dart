import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:latlong2/latlong.dart' as latLng2;

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
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(31.9454, 35.9284),
          zoom: 14.0,
        ),
      ),
    );
  }
}
