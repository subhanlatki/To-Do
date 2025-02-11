import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';
import 'package:todo/constants/app_colors.dart';
import 'package:todo/view/screens/add_to_title.dart';


class ProfileDashboardScreen extends StatelessWidget {
  const ProfileDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Color3,
      body: Column(
        children: [
          Container(
            height: 220.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.color1
            
            ),
            child: Column(
              children: [
                SizedBox(height: 60.h),
                CircleAvatar(
                  radius: 45.r,
                  backgroundImage: AssetImage('assets/WhatsApp Image 2024-09-24 at 23.35.12_8f7810de.jpg'),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Welcome Subhan ",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "ToDo Tasks.",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Expanded(
            child: ListView( 
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              children: [
                _taskTile("Title of your task", "Description of your task is .....", "6:50", AppColors.Color5),
                _taskTile("Title of your task", "Description of your task is .....", "5:20", AppColors.Color6),
                _taskTile("Title of your task", "Description of you task is .....", "8:10", AppColors.Color7),
              ],
            ),
          ),
         
          Padding(
            padding: EdgeInsets.all(17.r),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: () { 
               
                },
                backgroundColor: AppColors.color1,
                shape: CircleBorder(),
                child: Icon(Icons.add, size: 24.sp, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _taskTile(
    String title, String description, String time, Color color) {
    return InkWell(
      onTap: () {
        Get.to(AddToTitle());
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: 12.h),
        child: Container(
          padding: EdgeInsets.all(15.r),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              Text(
                time,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}