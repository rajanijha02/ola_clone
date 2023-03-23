import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Enter Phone number for verificatin',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'This number will be used for all ride-related communication. You shall receive an SMS with code for verification.',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.call),
                      hintText: 'Your Number',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                  // SizedBox(height: 15,),
                  // Row(children: [
                  //   Container(
                  //     height: 30,
                  //     width: 30,
                  //     child: Image.asset('assets/india.png'),
                  //   ),
                  //   SizedBox(width: 10,),
                  //    Text("+91", style: TextStyle(fontSize: 18),),
                  //    SizedBox(width: 10,),
                  //    TextField(
                  //   decoration: InputDecoration(hintText: 'Your Number', hintStyle: TextStyle(color: Colors.black))
                  // ),
                  // ],)
                ],
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey),
                minimumSize: MaterialStateProperty.all(
                  Size(double.infinity, 50),
                ),
              ),
              onPressed: () {
                Get.toNamed('/otp');
              },
              child: Text(
                'Next',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
