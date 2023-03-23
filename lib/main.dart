import 'package:ola_clone/OTP/otp_view.dart';
import 'package:ola_clone/T&C/t&c_view.dart';
import 'package:ola_clone/bindings.dart';
import 'package:ola_clone/home/view/home_view.dart';
import 'package:ola_clone/login/view/login_view.dart';
import 'package:ola_clone/permission/permission_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'cab booking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/tandc',
      getPages: [
        GetPage(
          name: '/tandc',
          page: () => TandCView(),
        ),
        GetPage(
          name: '/login',
          page: () => LoginView(),
          binding: LoginBinding(),
        ),
        GetPage(
          name: '/otp',
          page: () => OTPView(),
        ),
        GetPage(
          name: '/permission',
          page: () => PermissionView(),
        ),
        GetPage(
          name: '/home',
          page: () => HomeView(),
          binding: HomeBinding(),
        ),
      ],
    );
  }
}
