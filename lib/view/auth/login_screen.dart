import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:todo/constants/app_colors.dart';
import 'package:todo/constants/app_icons.dart';
import 'package:todo/constants/app_image.dart';
import 'package:todo/utils/toastutil.dart';
import 'package:todo/view/auth/forgot_screen.dart';
import 'package:todo/view/auth/signup_screen.dart';
import 'package:todo/view/screens/add_to_do_screen.dart';
import 'package:todo/widgets/button/common_button.dart';
import 'package:todo/widgets/field/common_textfield.dart';

class LoginScreen extends StatefulWidget {

   LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController confirmPasswordController = TextEditingController();
       bool Loading=false;

  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
 
    return Scaffold( 
       backgroundColor: AppColors.Color3,
       body: SingleChildScrollView(
         child: SafeArea(child: 
          Form(
            key: _formkey,
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
                       SizedBox(height: 30.h,),
                      Text('Welcome Back!',
                      style:  TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'poppins'
                      ),
                      ),
                     SizedBox(height: 15.h,), 
                   Center(child: Image.asset(AppImage.LoginScreen)
                   ),
                Column( 
                   children: [  
                    SizedBox(height: 18.h,),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 26.w),
                          child: CommonTextfield(
                             validator: (Value) {
                               if (Value ==''||Value==null) {
                                return 'Please enter your email';
                               }return  null;
                             },
                            hintText: 'Entre your Email address', 
                          controller: emailController),
                        ),
                         SizedBox(height: 30.h,),
                         Padding(
                           padding:  EdgeInsets.symmetric(horizontal: 26.w),
                           child: CommonTextfield(
                            
                            validator: (value){
                              if (value ==''||value==null) {
                                return 'Please enter password';
                              } return null;
                            },
                            hintText: 'Confirm Password', 
                          controller: confirmPasswordController),
                         ),
                      SizedBox(
                        height: 26.h,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(ForgotPasswordScreen());
                        },
                        child: Text( 
                          textAlign: TextAlign.center,
                          'Forget Password ?',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: AppColors.color1,
                            fontFamily: "poppins"
                            ),
                            ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.h),
                        child: CommonButton(
                          isloading: Loading,
                          title: "Sign In", ontap: () async{
                        
                          if (_formkey.currentState!.validate()) {
                            try {
                             Loading = true;
                             setState(() {
                              
                             });
                            await   FirebaseAuth.instance
                            .signInWithEmailAndPassword(email: emailController.text,
                             password: confirmPasswordController.text);
                         Get.to(AddToDoScreen());
                          Loading = false;
                          setState(() {
                           
                          });
                              tostmasage.succes('you have succes fuly Signup');
                          } on FirebaseAuthException catch (e) {
                           tostmasage.error('an Eror occourd');
                              Loading =false;
                          setState(() {
                            
                          });
                          
                          }
                        
                         }
                         
                          }
                        ),
                      ),
                             SizedBox(height: 1.h),
                      Row( 
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                             "Dont have an account ?",
                             style: TextStyle( 
                              fontSize: 14.sp,
                             color: Colors.black,
                             fontFamily: 'poppins'
                             ),
                          ),
                         
                          GestureDetector( 
                          onTap: (){
                          Get.to(SignupScreen());
                          },
                          child: Text(
                            'Sign Up',
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