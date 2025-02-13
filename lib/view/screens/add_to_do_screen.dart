import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:todo/constants/app_colors.dart';
import 'package:todo/constants/app_icons.dart';
import 'package:todo/constants/app_image.dart';
import 'package:todo/view/screens/profileDashboard_screen.dart';
import 'package:todo/widgets/button/common_button.dart';
import 'package:todo/widgets/field/common_textfield.dart';


class AddToDoScreen extends StatefulWidget {

    AddToDoScreen({super.key});

  @override
  State<AddToDoScreen> createState() => _AddToDoScreenState();
}

class _AddToDoScreenState extends State<AddToDoScreen> {
   final TextEditingController TitleController = TextEditingController();

   final TextEditingController DescriptionController = TextEditingController();
    bool loading=false;
  @override
  Widget build(BuildContext context) {
    final _formKey =GlobalKey<FormState>();
    return Scaffold( 
       backgroundColor: AppColors.Color3,
       body: SingleChildScrollView(
         child: SafeArea(child: 
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
                      Text('Add to do!',
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
                   SizedBox(height: 18.h,),
                      Text("Add What your want to do later on",
                      style:  TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.color1,
                        fontFamily: 'poppins'
                      ),
                      ),
                Column( 
                   children: [  
                    SizedBox(height: 22.h,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CommonTextfield(
                            validator: (Value) {
                              if (Value ==""|| Value==null) {
                                return "please entre title";
                              }return null;
                            },
                            hintText: 'Title', controller:  TitleController),
                        ),
                          SizedBox(height: 16.h,),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: CommonTextfield(
                              validator: (Value) {
                                if (Value ==""|| Value==null) {
                                  return "please entre description";
                                }return null;
                              },
                              hintText: 'Description', controller: DescriptionController)  ,                       ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 32.h),
                        child: CommonButton(  
                          isloading: loading,
                          title: "Add to list ", ontap: (){
                          if (_formKey.currentState!.validate()) { 
                            setState(() {
                              loading =true;
                            });
                             Get.to(ProfileDashboardScreen());
                             setState(() {
                                loading =false;
                             });
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
         ),
       )
    );
  }
}