import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';

import 'package:geolocator/geolocator.dart';
import 'package:meenmanam/common/constant.dart';
import 'package:meenmanam/module/styles.dart';
import 'package:meenmanam/themes/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:geocoding/geocoding.dart';

class OSMMapPage extends StatefulWidget {
  final Map<String, dynamic> type;
  const OSMMapPage({super.key, required this.type});

  @override
  State<OSMMapPage> createState() => _OSMMapPageState();
}

class _OSMMapPageState extends State<OSMMapPage> {
  LatLng currentLatLng = LatLng(12.7897, 80.2216);
  LatLng? pinnedLatLng;
  String? selectedAddress;
  StreamSubscription<Position>? _positionStream;
  final MapController mapController = MapController();

  @override
  void initState() {
    super.initState();
    print("23qr234r123r ${widget.type}");
    _initLocationTracking();
  }

  Future<void> _initLocationTracking() async {
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        if (mounted) {
          showDialog(
            context: context,
            builder:
                (context) => AlertDialog(
                  title: const Text('Location Services Disabled'),
                  content: const Text(
                    'Please enable location services to use this feature.',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        Geolocator.openLocationSettings();
                      },
                      child: const Text('Open Settings'),
                    ),
                  ],
                ),
          );
        }
        return;
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        permission = await Geolocator.requestPermission();
        if (permission != LocationPermission.always &&
            permission != LocationPermission.whileInUse) {
          // Show a dialog to inform the user that location permission is required
          if (mounted) {
            showDialog(
              context: context,
              builder:
                  (context) => AlertDialog(
                    title: const Text('Location Permission Required'),
                    content: const Text(
                      'This app needs location permission to show your current location on the map.',
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
            );
          }
          return;
        }
      }
      try {
        Position currentPosition = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );
        setState(() {
          currentLatLng = LatLng(
            currentPosition.latitude,
            currentPosition.longitude,
          );
        });
        mapController.move(currentLatLng, mapController.camera.zoom);
      } catch (e) {
        print('Error getting current position: $e');
        // Continue with default location if getting current position fails
      }

      _positionStream = Geolocator.getPositionStream(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
          distanceFilter: 10,
        ),
      ).listen(
        (Position position) {
          setState(() {
            currentLatLng = LatLng(position.latitude, position.longitude);
          });

          // Move camera to user's current location
          mapController.move(currentLatLng, mapController.camera.zoom);
        },
        onError: (error) {
          // Handle location errors gracefully
          print('Location stream error: $error');
          // You can show a snackbar or dialog here to inform the user
          // For now, we'll just log the error and continue with the default location
        },
      );
    } catch (e) {
      print('Error initializing location tracking: $e');
      // Handle any other errors that might occur during initialization
    }
  }

  Future<String> _getAddressFromLatLng(LatLng latLng) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        latLng.latitude,
        latLng.longitude,
      );
      if (placemarks.isNotEmpty) {
        final place = placemarks.first;
        return "${place.name}, ${place.locality}, ${place.administrativeArea}, ${place.country}";
      }
    } catch (e) {
      // Handle error
    }
    return "Address not found";
  }

  void _openGoogleMapsDirections() async {
    if (pinnedLatLng == null || currentLatLng == null) return;

    final Uri googleMapsUri = Uri.parse(
      'https://www.google.com/maps/dir/?api=1'
      '&origin=${currentLatLng.latitude},${currentLatLng.longitude}'
      '&destination=${pinnedLatLng!.latitude},${pinnedLatLng!.longitude}'
      '&travelmode=driving',
    );

    if (await canLaunchUrl(googleMapsUri)) {
      await launchUrl(googleMapsUri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch Google Maps';
    }
  }

  @override
  void dispose() {
    _positionStream?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FlutterMap(
          mapController: mapController,
          options: MapOptions(
            initialCenter: currentLatLng,
            initialZoom: 16,
            interactionOptions: const InteractionOptions(),
            keepAlive: true,
            onTap: (tapPosition, point) {
              setState(() {
                pinnedLatLng = point;
              });
            },
            onSecondaryTap: (tapPosition, point) => print(point),
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.meenmanam.app',
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: currentLatLng,
                  width: 40,
                  height: 40,
                  child: const Icon(
                    Icons.my_location,
                    color: Colors.blue,
                    size: 40,
                  ),
                ),
                // Custom pinned marker
                if (pinnedLatLng != null)
                  Marker(
                    point: pinnedLatLng!,
                    width: 40,
                    height: 40,
                    child: GestureDetector(
                      onTap: () async {
                        String address = await _getAddressFromLatLng(
                          pinnedLatLng!,
                        );
                        showDialog(
                          context: context,
                          builder:
                              (context) => AlertDialog(
                                title: Text("Pinned Location"),
                                content: Text(address),
                                actions: [
                                  TextButton(
                                    onPressed:
                                        () => Navigator.of(context).pop(),
                                    child: Text("Close"),
                                  ),
                                ],
                              ),
                        );
                      },
                      child: Icon(
                        Icons.location_on,
                        color: AppColors.primary,
                        size: 40,
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
        // Back button positioned at top left corner
        Positioned(
          top: 50,
          left: 16,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(25),
            ),
            child: IconButton(
              onPressed: () {
                if (widget.type == RouteConstant.cart) {
                  context.go(RouteConstant.cart);
                } else {
                  Navigator.pop(context);
                }
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                size: 20,
                color: AppColors.white,
              ),
            ),
          ),
        ),
        // Navigate button positioned at bottom right
        if (pinnedLatLng != null)
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton.extended(
              onPressed: _openGoogleMapsDirections,
              label: Text("Navigate", style: Styles.orderTextStyles),
              icon: const Icon(Icons.directions, color: AppColors.white),
              backgroundColor: Colors.green,
            ),
          ),
      ],
    );
  }
}
