import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:todo/utils/toastutil.dart';
import 'package:todo/view/auth/signup_screen.dart';
import 'package:todo/view/screens/add_to_do_screen.dart';

class AuthController extends GetxController {
  RxBool isLoading = false.obs;

  Future login(
    TextEditingController emailController,
    TextEditingController confirmPasswordController,
    GlobalKey<FormState> _formkey,
  ) async {
    if (_formkey.currentState!.validate()) {
      isLoading.value = true;
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailController.text,
            password: confirmPasswordController.text);
        Get.to(AddToDoScreen());

        tostmasage.succes('you have succes fuly login');
        isLoading.value = false;
      } on FirebaseAuthException catch (e) {
        tostmasage.error('an Eror occourd');
        isLoading.value = false;
      }
    }
  }





  Future signup(
    TextEditingController emailController,
    TextEditingController passwordController,
    GlobalKey<FormState> _formKey,
    
  ) async { 
     if (_formKey.currentState!.validate()) {
      isLoading.value = true; 
      try {
         await  FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text);

         final String userid = await FirebaseAuth.instance.currentUser!.uid;
         DocumentReference docRef =
           FirebaseFirestore.instance.collection('userprofile').doc(userid);
           await docRef.set({
            'email': emailController.text,
            'name' : passwordController.text,
            'userid': userid.toString(),
            'password': passwordController.text,
            'image': '',
      });
              Get.to(()=> AddToDoScreen());
            tostmasage.succes('you have succes fuly Signup');
        isLoading.value = false;
      } on FirebaseAuthException catch (e) {
        tostmasage.error('an Eror occourd');
        isLoading.value = false;
      }
     }
  }




  Future forgotPassword(
    TextEditingController forgotcontroller,
     GlobalKey<FormState> _formKey
    ) async { 
       try {
        if (_formKey.currentState!.validate()){
           isLoading.value = true;
          await FirebaseAuth.instance.sendPasswordResetEmail(email: forgotcontroller.text);
          Get.to(()=> SignupScreen());
        
        }
      } catch (e) {
        Get.snackbar('Eror', e.toString(), backgroundColor: Colors.red);
          isLoading.value = false;
      }
    }
  }

  Future logout() async {}
  
