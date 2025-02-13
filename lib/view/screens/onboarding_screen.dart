import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todo/constants/app_colors.dart';
import 'package:todo/constants/app_image.dart';
import 'package:todo/view/auth/signup_screen.dart';
import 'package:todo/widgets/button/common_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
  
    bool isloading = false;
    return Scaffold( 
      
       backgroundColor: AppColors.Color3,
       body: SafeArea(child: 
        Padding(
          padding:  EdgeInsets.only(top: 100.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Center(child: Image.asset(AppImage.onboarding )
               ),
            Column( 
               children: [  
                  Text('Get things done with TODo',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.h,
                    fontFamily: 'poppins'
                  ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
          
                  Text( 
                    textAlign: TextAlign.center,
                    'Lorem ipsum dolor sit amet\n consectetur adipisicing. Maxime,\n tempore! Animi nemo aut atque\n deleniti nihil dolorem repellendus.',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13.sp,
                      fontFamily: "poppins"
                      ),
                      ),
                    SizedBox(height: 18.h),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 50.h),
                    child: CommonButton(
                      
                      title: "Get Started ", ontap:  () {  
                        final box =GetStorage();
                        box.write('isonboardingplayed', true) ;
                                    
                      Get.to(()=>SignupScreen());
                    }),
                  )
               ],
            )
            ],
          ),
        )
       )
    );
  }
}