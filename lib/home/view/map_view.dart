import 'package:ola_clone/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapViewWidget extends GetView<HomeController> {
  const MapViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.3,
      child: Stack(
        children: [
          Expanded(
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(0.0, 0.0),
              ),
              onMapCreated: controller.onMapCreated,
              mapType: MapType.terrain,
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Material(
                elevation: 2,
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.list, size: 30,),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.green),
                            ),
                            SizedBox(width: 15,),
                            Text("Your Current Location", style: TextStyle(fontSize: 16),),
                          ],
                        ),
                        Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.grey.shade500,
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
