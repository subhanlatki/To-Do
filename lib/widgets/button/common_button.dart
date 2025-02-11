import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/constants/app_colors.dart';

class CommonButton extends StatefulWidget {
  final String title;
  final VoidCallback ontap;
  const CommonButton({super.key,
     required this.title, required this.ontap
  });

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap:  widget.ontap,
      child:  Container( 
        height: 48.h,
        width:  230.w,
        color: AppColors.color1 ,
        child: Center( 
          child: Text( 
            widget.title,
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