import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final String token = 'pk.eyJ1Ijoic3Atc2F1cmFiaGluZm9zeXMiLCJhIjoiY2ttcWJ6enpwMGZrNzJvdDRrMDI2d2h2aCJ9.y-pp3tcIksCQqcS9b4OgcQ';
    final String style = 'url-to-style';
    MapboxMapController _mapController;
    return Scaffold(
      body: FlutterMap(
        layers: [
                TileLayerOptions(urlTemplate: "https://api.mapbox.com/styles/v1/sp-saurabhinfosys/ckmqeesb210yc17qhnwg9o1t1.html?fresh=true&title=copy&access_token=pk.eyJ1Ijoic3Atc2F1cmFiaGluZm9zeXMiLCJhIjoiY2ttcWJ6enpwMGZrNzJvdDRrMDI2d2h2aCJ9.y-pp3tcIksCQqcS9b4OgcQ")
        ],
        options: MapOptions(

                 )
      ),
    );
  }
}