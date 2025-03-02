import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';
import 'package:todo/constants/app_colors.dart';
import 'package:todo/constants/app_icons.dart';
import 'package:todo/view/screens/add_to_home.dart';
import 'package:todo/view/screens/edit_tittle.dart';
import 'package:todo/widgets/button/common_button.dart';


class EditTittle extends StatefulWidget {
  const EditTittle({super.key});

  @override
  State<EditTittle> createState() => _AddToTitleState();
}

class _AddToTitleState extends State<EditTittle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Color3,
      body:  SingleChildScrollView(
        child: SafeArea(
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
                      SizedBox(width: 235.w,),
                
                   ],
                 ),
                 
                      SizedBox(height: 18.h,),
                  TextFormField(
             decoration: InputDecoration(
          hintText: 'Title of your Task',
          hintStyle: TextStyle(fontSize: 18.sp, color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'poppins'),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(11.r)
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
                    TextFormField(
             decoration: InputDecoration(
          hintText: 'it is a long established ..........',
          hintStyle: TextStyle(fontSize: 15.sp, color: Colors.black,fontFamily: 'poppins'),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(11.r)
          ),
        ),
            ),
        SizedBox(height: 350.h,),
            CommonButton(title: 'Update', ontap: (){
        Get.to(AddToHome());
            })
              ],
            ),
          )
        ),
      ),
          );
  }
}