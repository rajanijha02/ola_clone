import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';


class TandCView extends StatelessWidget {
  const TandCView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/img1.jpg',
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),

          // Container(
          //   height: MediaQuery.of(context).size.height * 0.7,
          //   width: MediaQuery.of(context).size.width,
          //   decoration: BoxDecoration(color: Color.fromARGB(255, 148, 235, 193),),
          //   child: Expanded(child:
          //   Image.asset('assets/img1.jpg', width: double.infinity,),)
          // ),

          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 20, top: 40),
                child: Text(
                  'Explore new ways to\ntravel with Ola',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/login');
                  },
                  child: const Text('Continue with Phone Number', style: TextStyle(fontSize: 16),),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black.withOpacity(0.8)),
                    minimumSize: MaterialStateProperty.all(Size(double.infinity, 50),),
                  ),
                ),
              ),
              //SizedBox(height: 10,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text('By continuing, you agree that you have read and accept our T&Cs and Privacy Policy', style: TextStyle(color: Colors.grey.shade800, fontSize: 12, fontWeight: FontWeight.w400),),),
            ],
          ))
        ],
      ),
    );
  }
}

