
 import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:todo/view/auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   @override
  void initState() {
    
    super.initState();
    Timer(Duration(seconds: 5), (){
      Get.to(LoginScreen());
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( 

    );
  }
}