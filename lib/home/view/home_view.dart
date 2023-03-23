import 'package:ola_clone/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import './map_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       
        body: Column(
          children: [
          MapViewWidget(),
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 65,
                    //color: Colors.blue,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: 65,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                controller.data[index].image,
                                height: 40,
                                width: 40,
                              ),
                              Text(
                                controller.data[index].name,
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: controller.data.length,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Card(
                      elevation: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade200),
                        ),
                        height: 190,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.search,
                                        color: Colors.green,
                                        size: 28,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        'Search Destination',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 24),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.history,
                                        size: 28,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Flexible(
                                        child: Text(
                                          'Kharar Bus Stand, Hindustan Petrol Pump',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 18),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.history,
                                        size: 28,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Flexible(
                                          child: Text(
                                        'Kharar Bus Stand, Hindustan Petrol Pump',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18),
                                        overflow: TextOverflow.ellipsis,
                                      ))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      elevation: 2,
                      child: Container(
                        height: 190,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade200),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 6,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 20),
                                    child: Column(
                                      children: [
                                        Text('Invite your friends to try Ola', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                                        
                                        ),
                                        SizedBox(height: 15,),
                                        Container(alignment: Alignment.centerLeft,
                                          child: Container(
                                            padding: EdgeInsets.all(10),
                                            color: Colors.grey.shade200,
                                            child: Text('GCWQ9K', style: TextStyle(letterSpacing: 5),),
                                          ),
                                        ),
                                        //SizedBox(height: 10,),
                                        Container(alignment: Alignment.centerLeft,
                                          child: TextButton(onPressed: (){}, child: Text('Share invite code'),)),
                                      ],
                                    ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Image.asset(
                                'assets/homeimg.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
