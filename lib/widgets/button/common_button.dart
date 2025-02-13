import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/constants/app_colors.dart';

class CommonButton extends StatelessWidget {
  final String title;
  final VoidCallback ontap;
  final bool? isloading;
  const CommonButton({ 
    super.key,
 required this.title, required this.ontap, this.isloading=false,
 
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
   onTap: ontap,
      child:  Container( alignment: Alignment.center,
        height: 48.h,
        width:  230.w,
        color:  AppColors.color1,
        child:  Center( 
          child: isloading == true ? SizedBox( height: 25.h,width: 30.w,
            child: 
          CircularProgressIndicator(
            color: Colors.white
            ,
          )
          )
          : Text( 
            title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.h,
              color: AppColors.Color2,
              fontFamily: "poppins"
            ),
          ),
        ),
      ),
      
    );
  }
}