import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:impty_project/core/enums/message_type.dart';
import 'package:impty_project/core/services/base_controller.dart';
import 'package:impty_project/core/utils/general_util.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_toast.dart';
import 'package:impty_project/ui/views/main_view/main_view.dart';

class SignupController extends BaseController {
  var SelectedValue = "".obs;
  TextEditingController emailController = TextEditingController(//text:
      );
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  RxBool isLoading = false.obs;
  onChangeSelected(var faculaty) {
    SelectedValue.value = faculaty;
  }

  //   void login(){
  //   if (formKey.currentState!.validate()){
  //     runFullLoadingFutuerFunction(
  //       function:UserRepository().login(email: emailController.text, password: passwordController.text) .then((value) {
  //         value.fold((l) {
  //           isLoading.value = false;

  //           CustomToast.showMessage(
  //               messageType: MessageType.REJECTED,

  //               message: l);
  //         },
  //                 (r) {
  //               storage.setTokenInfo(r);
  //               Get.off(MainView());
  //             });
  //       })
  //     );
  //     //isLoading.value = true;
  //     }
  // }
}
