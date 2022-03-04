import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class CaseMapWidget extends StatefulWidget {
  final LatLng caseLatLng;
  const CaseMapWidget({this.caseLatLng});
  @override
  State<CaseMapWidget> createState() => CaseMapWidgetState();
}

class CaseMapWidgetState extends State<CaseMapWidget> {
  LatLng currentLatLng = LatLng(51.107645, 17.061132);

  Marker marker1 = Marker(
    markerId: MarkerId('Hospital1'),
    position: LatLng(51.0730004, 17.0326245),
    infoWindow: InfoWindow(title: 'SOR Borowska'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
  );
  Marker marker2 = Marker(
    markerId: MarkerId('Hospital2'),
    position: LatLng(51.11015721347067, 17.06530809402466),
    infoWindow: InfoWindow(title: 'SOR Kliniki'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
  );
  Marker marker3 = Marker(
    markerId: MarkerId('Hospital3'),
    position: LatLng(51.07362783932242, 17.020204067230228),
    infoWindow: InfoWindow(title: 'SOR Ślęzna'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
  );
  List<Marker> markerList = [];

  @override
  void initState() {
    super.initState();
    markerList = [marker1, marker2, marker3];
    Geolocator.getCurrentPosition().then((currLocation) {
      setState(() {
        currentLatLng =
            new LatLng(currLocation.latitude, currLocation.longitude);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: currentLatLng == null
          ? Center(child: CircularProgressIndicator())
          : GoogleMap(
              compassEnabled: true,
              mapType: MapType.hybrid,
              initialCameraPosition:
                  CameraPosition(target: widget.caseLatLng, zoom: 14),
              markers: Set<Marker>.of(markerList),
            ),
    );
  }
}
