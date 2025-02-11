import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';
import 'package:todo/constants/app_colors.dart';
import 'package:todo/constants/app_icons.dart';


class AddToTitle extends StatelessWidget {
  const AddToTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Color3,
      body:  SafeArea(
        child:  
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 11.w,vertical: 10.h),
          child: Column( 
            children: [ 
               Align(
                alignment: Alignment.topLeft,
                  child: IconButton(onPressed: (){
                   Get.back();
                  }, icon:  Icon(AppIcons.arrow_icon,size: 24.sp,)
                  ),
                ),
                    SizedBox(height: 18.h,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding:EdgeInsets.only(left: 9.w),
                      child: Text('Tittle of your Task',
                      style:  TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'poppins'
                      ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider( 
                       thickness: 2,
                       color: AppColors.color1,
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('12 : 00 Tittle of your Task It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here  making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncove',
                    style: TextStyle(
                      fontFamily: 'poppins'
                    ),
                    ),
                  ))
            ],
          ),
        )
      ),
          );
  }
}