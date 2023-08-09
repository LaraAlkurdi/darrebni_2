import 'package:get/get.dart';
import 'package:impty_project/core/utils/general_util.dart';
<<<<<<< HEAD
import 'package:impty_project/ui/views/login_view/login_view.dart';
=======
import 'package:impty_project/ui/views/main_view/home_view/home_view.dart';
import 'package:impty_project/ui/views/main_view/main_view.dart';
>>>>>>> main

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(Duration(seconds: 3)).then((value) {
<<<<<<< HEAD
      // if (storage.getFirstLunch()  )
      Get.off(LoginView());
=======
      // if (storage.getFirstLunch())
      Get.off(MainView());
>>>>>>> main
      // else {
      //  Get.off(storage.isLoggedIn? MainView():LandingView());
      // }
      // storage.setFirstLunch(false);
    });
    super.onInit();
  }
}
