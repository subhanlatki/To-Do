import 'package:get/route_manager.dart';
import 'package:get/utils.dart';
import 'package:todo/constants/app_colors.dart';

class tostmasage {
  static void succes(String masage){
Get.snackbar('Succes',masage ,backgroundColor: AppColors.color1);
  }

  static void error(String masage){
Get.snackbar('Eror',masage ,backgroundColor: AppColors.red);
  }
}