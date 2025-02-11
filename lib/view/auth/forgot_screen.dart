import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';
import 'package:todo/constants/app_colors.dart';
import 'package:todo/constants/app_icons.dart';
import 'package:todo/constants/app_image.dart';
import 'package:todo/view/screens/profileDashboard_screen.dart';
import 'package:todo/widgets/button/common_button.dart';
import 'package:todo/widgets/field/common_textfield.dart';


class ForgotPasswordScreen extends StatelessWidget {
  final TextEditingController ForgotPassword = TextEditingController();
   ForgotPasswordScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold( 
       backgroundColor: AppColors.Color3,
       body: SafeArea(child: 
        Form(
           key: _formKey,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 11.w,vertical: 10.h),
            child: Column(
              children: [
                 Align(
                  alignment: Alignment.topLeft,
                    child: IconButton(
                   onPressed: (){
                      Get.back();
                    },
                    icon: Icon(AppIcons.arrow_icon, size: 24.sp),
                      
                      ),
                    ),  
                     SizedBox(height: 35.h,),
                    Text('Forgot Password',
                    style:  TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'poppins'
                    ),
                    ),
                   SizedBox(height: 25.h,), 
                 Padding(
                   padding: EdgeInsets.only(left: 40.w),
                   child: Center(child: Image.asset(AppImage.AddTaskScreen)
                   ),
                 ),
              Column( 
                 children: [  
                  SizedBox(height: 22.h,),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: CommonTextfield(
                        validator: (Value) {
                          if (Value ==''|| Value==null) {
                            return 'Please entre your email';
                          }return null;
                        },
                        hintText: 'Forgot Password', controller: ForgotPassword),
                     ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30.h),
                      child: CommonButton(title: "Forgot", ontap: (){
                        if (_formKey.currentState!.validate()) {
                              Get.to(ProfileDashboardScreen());
                        }
                        
                      }
                      ),
                    ),
                
                 ],
              )
              ],
            ),
          ),
        )
       )
    );
  }
}