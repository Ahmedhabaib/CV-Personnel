import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}
class _MapPageState extends State<MapPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map Page'),
      ),
      body: content(),
    );
  }
      Widget content(){
          return FlutterMap(
            options: MapOptions(
              initialCenter: LatLng(34.797367, 10.771747),
              initialZoom: 18.2,
              interactionOptions: const InteractionOptions(
                flags: ~InteractiveFlag.doubleTapZoom),
              ),
          children: [
            openStreetMapTileLayer,
             MarkerLayer(
                markers: [
                  Marker(
                    point: LatLng(34.797367, 10.771747),
                    width: 80,
                    height: 80,
                    child: Icon(Icons.location_pin, size:60, color: Colors.red),
                  ),
                ]),
              ],
          );
  }
}
TileLayer get openStreetMapTileLayer => TileLayer(
  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
  userAgentPackageName: 'com.example.app',

  );
