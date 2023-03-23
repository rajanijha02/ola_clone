import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class HomeController extends GetxController {
  List<CarService> data = [
    CarService(name: 'Daily', image: "assets/car1.jpg"),
    CarService(name: 'Electric', image: "assets/car2.jpg"),
    CarService(name: 'Rentals', image: "assets/car3.jpg"),
    CarService(name: 'Outstation', image: "assets/car4.jpg"),
    CarService(name: 'Money', image: "assets/car5.jpg"),
    CarService(name: 'Insure', image: "assets/car6.jpg"),
  ];

  late GoogleMapController mapController;
  void onMapCreated(GoogleMapController controller) async {
    mapController = controller;
    Geolocator.getPositionStream().listen((event) {
      mapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: LatLng(event.latitude, event.longitude),
          ),
        ),
      );
    });
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print(data.length);
  }
}

class CarService {
  String name;
  String image;

  CarService({
    required this.name,
    required this.image,
  });
}