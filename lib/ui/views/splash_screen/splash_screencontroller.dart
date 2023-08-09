import 'package:get/get.dart';
import 'package:impty_project/core/utils/general_util.dart';
import 'package:impty_project/ui/views/main_view/home_view/home_view.dart';
import 'package:impty_project/ui/views/main_view/main_view.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      // if (storage.getFirstLunch())
      Get.off(MainView());
      // else {
      //  Get.off(storage.isLoggedIn? MainView():LandingView());
      // }
      // storage.setFirstLunch(false);
    });
    super.onInit();
  }
}
