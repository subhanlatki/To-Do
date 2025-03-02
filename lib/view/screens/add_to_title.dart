import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';
import 'package:todo/constants/app_colors.dart';
import 'package:todo/constants/app_icons.dart';
import 'package:todo/view/screens/edit_tittle.dart';


class AddToTitle extends StatefulWidget {
  const AddToTitle({super.key});

  @override
  State<AddToTitle> createState() => _AddToTitleState();
}

class _AddToTitleState extends State<AddToTitle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Color3,
      body:  SafeArea(
        child:  
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 12.w,vertical: 12.h),
          child: Column( 
            children: [ 
               Row(
                 children: [
                   Align(
                    alignment: Alignment.topLeft,
                      child: IconButton(onPressed: (){
                       Get.back();
                      }, icon:  Icon(AppIcons.arrow_icon,size: 24.sp,)
                      ),
                    ), 
                    SizedBox(width: 230.w,),
                     Align(
                alignment: Alignment.topRight,
                  child: IconButton(onPressed: (){
                   Get.to(EditTittle());
                  }, icon:  Icon(AppIcons.edit_icon,size: 24.sp,)
                  ),
                ),
                 ],
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
                    child: Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here  making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncove',
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