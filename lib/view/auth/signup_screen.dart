
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:todo/constants/app_colors.dart';
import 'package:todo/constants/app_icons.dart';
import 'package:todo/controller/auth_controller.dart';
import 'package:todo/utils/toastutil.dart';
import 'package:todo/view/auth/login_screen.dart';
import 'package:todo/view/screens/add_to_do_screen.dart';
import 'package:todo/widgets/button/common_button.dart';
import 'package:todo/widgets/field/common_textfield.dart';

class SignupScreen extends StatefulWidget {

  SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
  
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController fullNameController = TextEditingController();

  final TextEditingController emailController =TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController = TextEditingController();

     AuthController authController = Get.put(AuthController());





  @override
  Widget build(BuildContext context) {
     final _formKey = GlobalKey<FormState>(); 
    return Scaffold( 
      backgroundColor: AppColors.Color3,
        body: SingleChildScrollView(
          child: SafeArea(
            child: 
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
                      SizedBox(height: 36.h,),
                      Text('Welcome Onboard!',
                      style:  TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'poppins'
                      ),
                      ),
                      SizedBox(height: 18.h,),
                      Text("Let's help you meet up your task",
                      style:  TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.color1,
                        fontFamily: 'poppins'
                      ),
                      ),
                       SizedBox(height: 24.h,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CommonTextfield( 
                           validator: (Value) {
                             if (Value ==''|| Value==null) {
                               return "please entre your name";
                             }return null;
                           },
                          hintText: 'Enter your Full Name', controller: fullNameController
                          ),
                      ),
                         SizedBox(height: 16.h,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CommonTextfield( 
                            validator: (Value) {
                              if (Value ==""|| Value==null) {
                                return "please entre your email";
                              }return null;
                            },
                          hintText: 'Enter your Email address', controller: emailController
                          ),
                        ),
                        SizedBox(height: 16.h,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CommonTextfield(
                            validator: (Value) {
                              if (Value ==""|| Value==null) {
                                return "please entre your password";
                              }return null;
                            },
                            hintText: 'Create a Password', controller: passwordController,
                          obscureText: true,
                          ),
                        ),
                        SizedBox(height: 16.h,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CommonTextfield(
                              validator: (Value) {
                                if (Value ==""|| Value==null) {
                                  return "please entre confirm password";
                                }return null;
                              },
                              hintText: 'Confirm a Password', controller: confirmPasswordController,
                            obscureText: true,
                            ),
                          ),
                          Padding(
                        padding: EdgeInsets.symmetric(vertical: 40),
                        child:  Obx(() =>  CommonButton(
                          isloading: authController.isLoading.value,
                          title: "Sign In", ontap: ()=>authController.signup(emailController, confirmPasswordController, _formKey)
                        ),)
                         
                       
                     
                      ),
                       
                      Row( 
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                             "Already have an account? ",
                             style: TextStyle( 
                              fontSize: 14.sp,
                             color: Colors.black,
                             fontFamily: 'poppins'
                             ),
                          ),
                         
                          GestureDetector( 
                          onTap: (){
                           Get.to(LoginScreen()); 
                           },
                          child: Text(
                            'Sign In',
                             style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.color1,
                              fontWeight: FontWeight.bold,
                               fontFamily: 'poppins'
                            ),
                          ),
                          )
                        ],
                      )
                    ],
                ),
              ),
            )
          ),
        ),
    );

  }

}