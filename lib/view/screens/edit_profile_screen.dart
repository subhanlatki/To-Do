import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/constants/app_colors.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Color3,
    
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 220.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.color1,
              
              ),
              child: Column(
                children: [
             Padding(
               padding: const EdgeInsets.only(left: 270,top: 40),
               child: Text(
                  "Save",
                  style: TextStyle(color: Colors.white, fontSize: 16.sp),
                ),
             ),
                  SizedBox(height: 20.h),
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 50.r,
                        backgroundImage: AssetImage('assets/WhatsApp Image 2024-09-24 at 23.35.12_8f7810de.jpg',),
                        backgroundColor: Colors.white,
                        
                      ),
                      Positioned(
                        bottom: 30,
                        right: 29,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                           
                          ),
                          padding: EdgeInsets.all(5.r),
                          child: Icon(
                            Icons.camera_alt,
                            size: 30.sp,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Edit Profile",
                    style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold,color: AppColors.color1),
                  ),
                  SizedBox(height: 10.h),
                  _customTextField("Fisayomi", Icons.edit),
                  SizedBox(height: 10.h),
                  _customTextField("abc@gmail.com", null),
                  SizedBox(height: 20.h),
                  Text(
                    "More",
                    style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold,color: AppColors.color1),
                  ),
                  SizedBox(height: 20.h),
                  Row( 
                    children: [ 
                       Icon(Icons.privacy_tip,),
                        SizedBox(width: 8.w),
                        Text('Privacy Policy',style:  TextStyle(fontSize: 16.sp, color: Colors.black)
            ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row( 
                      children: [ 
                            Icon(Icons.book,),
                        SizedBox(width: 8.w),
                        Text('Terms & Conditions',style:  TextStyle(fontSize: 16.sp, color: Colors.black)
            ),
                      ],
                  ),
                  SizedBox(height: 10.h),
                 Row( 
                  children: [  
                       Icon(Icons.logout,color: Colors.red,),
                        SizedBox(width: 8.w),
                        Text('Logout',style:  TextStyle(fontSize: 16.sp, color: Colors.black)
            ),
                  ],
                 )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _customTextField(String hint, IconData? icon) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(fontSize: 14.sp, color: Colors.black),
        suffixIcon: icon != null ? Icon(icon) : null,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(11.r),
        ),
        filled: true,
        fillColor: AppColors.Color2,
      ),
    );
  }

}
