import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

import '../components/sharemyplace_screen/network.dart';
import '../components/sharemyplace_screen/show_detail.dart';
import '../components/sharemyplace_screen/add_place.dart';
import '../components/common/common.dart';
import '../providers/place_provider.dart';
import '../models/place.dart';

class ShareMyPlaceScreen extends StatefulWidget {
  @override
  State<ShareMyPlaceScreen> createState() => ShareMyPlaceScreenState();
}

class ShareMyPlaceScreenState extends State<ShareMyPlaceScreen> {
  GoogleMapController _controller;
  Set<Polygon> _polygons = HashSet<Polygon>();

  Set<Polyline> _polyLines = {};
  List<LatLng> _polyPoints = [];

  var data;

  BitmapDescriptor _csLocationIcon;

  Set<Marker> _markers = {};

  LocationData _currentLocation;
  Location _location;
  StreamSubscription<LocationData> _locationSubscription;
  BitmapDescriptor _sourceIcon;
  BitmapDescriptor _destinationIcon;

  LocationData _destinationLocation;

  @override
  void initState() {
    super.initState();

    _location = new Location();

    _locationSubscription =
        _location.onLocationChanged.listen((LocationData cLoc) {
      _currentLocation = cLoc;
      _updatePinOnMap();
    });
    _setCurrentLationIcons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cultural & Tourist Attractions in Songkhla",
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        actions: <Widget>[],
        backgroundColor: Colors.blueGrey,
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        myLocationEnabled: true,
        polygons: _polygons,
        initialCameraPosition: _kSKRU,
        onMapCreated: (GoogleMapController controller) {
          _controller = controller;
        },
        markers: _markers,
        polylines: _polyLines,
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: FloatingActionButton.extended(
          onPressed: () {
            setState(() {
              _markers = {};
            });
          },
          label: Text('Refresh'),
          icon: Icon(Icons.refresh),
        ),
      ),
    );
  }

  @override
  void dispose() {
    print('dispose');
    _controller.dispose();
    _locationSubscription.cancel();
    super.dispose();
  }

  void _setDestination(LatLng latlng) async {
    if ((_destinationLocation != null) &&
        (_destinationLocation.latitude == latlng.latitude) &&
        (_destinationLocation.longitude == latlng.longitude)) {
      setState(() {
        _destinationLocation = null;
        _markers
            .removeWhere((m) => m.markerId.value == 'destinationLacationPin');
        _polyPoints.clear();
      });
    } else {
      setState(() {
        _destinationLocation = LocationData.fromMap(
            {'latitude': latlng.latitude, 'longitude': latlng.longitude});
        _markers
            .removeWhere((m) => m.markerId.value == 'destinationLacationPin');
        _markers.add(Marker(
          markerId: MarkerId('destinationLacationPin'),
          position: latlng,
          icon: _destinationIcon,
          infoWindow: InfoWindow(
              title: "Destination Location",
              snippet: "Your destination is here!"),
        ));
      });
    }
  }

  void _setCurrentLationIcons() async {
    _sourceIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5), 'images/driving_pin.png');

    _destinationIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'images/destination_map_marker.png');
  }

  void _updatePinOnMap() async {
    setState(() {
      var pinPosition =
          LatLng(_currentLocation.latitude, _currentLocation.longitude);

      _markers.removeWhere((m) => m.markerId.value == 'currentLacationPin');
      _markers.add(Marker(
        markerId: MarkerId('currentLacationPin'),
        position: pinPosition,
        icon: _sourceIcon,
        infoWindow:
            InfoWindow(title: "Current Location", snippet: "I am here now!"),
      ));
    });
  }

  static final CameraPosition _kSKRU = CameraPosition(
    target: CommonData.SKRU_LATLNG,
    zoom: 16,
  );

  Future<LocationData> getCurrentLocation() async {
    Location location = Location();

    return await location.getLocation();
  }

  _setPolyLines() {
    Polyline polyline = Polyline(
      polylineId: PolylineId("polyline"),
      color: Colors.lightBlue,
      width: 5,
      points: _polyPoints,
    );
    _polyLines.add(polyline);
    setState(() {});
  }
}

class LineString {
  LineString(this.lineString);
  List<dynamic> lineString;
}
