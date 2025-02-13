import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todo/constants/app_colors.dart';

import 'package:todo/view/screens/onboarding_screen.dart';
import 'package:todo/view/screens/splash_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); 
  await GetStorage.init();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final box = GetStorage();
  if (box.read('isonboardingplayed') == null) {
    box.write("isonboardingplayed", false);
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
  
    return ScreenUtilInit(
    
     designSize: const Size(360, 690),
     minTextAdapt: true,
     splitScreenMode: true,
     builder: (_, child){
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      );
     },
    );
  }
}
