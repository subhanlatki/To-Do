import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:todo/constants/app_colors.dart';
import 'package:todo/view/screens/add_to_do_screen.dart';
import 'package:todo/view/screens/add_to_title.dart';
import 'package:todo/view/screens/edit_profile_screen.dart';

class AddToHome extends StatelessWidget {
  AddToHome({super.key});

  List<Map<String, String>> todoList = [
    {
      'title': 'Title of your task',
      'description': 'Description of your task is ....',
      'time': '7:10 AM',
    },
    {
      'title': 'Title of your task',
      'description': 'Discuss project updates and deadlines.',
      'time': '5:20 PM',
    },
    {
      'title': 'Title of your task',
      'description': 'Do cardio and strength training.',
      'time': '8:10 AM',
    },
  
  ];

  List<Color> colors = [
    Colors.blue.shade100,
    Colors.green.shade100,
    Colors.purple.shade100,
    Colors.orange.shade100,
    Colors.red.shade100,
    Colors.teal.shade100,
  ];

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
              color: AppColors.color1,
            ),
            child: Column(
              children: [
                SizedBox(height: 60.h),
                GestureDetector(
                  onTap: () {
                    Get.to(EditProfileScreen());
                  },
                  child: CircleAvatar(
                    radius: 45.r,
                    backgroundImage: AssetImage(
                        'assets/WhatsApp Image 2024-09-24 at 23.35.12_8f7810de.jpg'),
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Welcome Subhan",
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
          SizedBox(height: 5.h),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: todoList.length,
                itemBuilder: (context, index) {
                  var item = todoList[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                           Get.to(AddToTitle());
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: colors[index % colors.length], 
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                         
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item['title']!,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 10.h),
                                  Text(item['description']!),
                                ],
                              ),
                            ),
                         
                            Column(
                              children: [
                                Text(
                                  item['time']!.isNotEmpty ? item['time']! : "No Time",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.w500),
                                ),
                          
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(17.r),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: () {
                  Get.to(AddToDoScreen());
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
}
