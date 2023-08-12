import 'package:get/get.dart';
import 'package:impty_project/core/services/base_controller.dart';

class SignupController extends GetxController {
  var SelectedValue = "".obs;

  onChangeSelected(var faculaty) {
    SelectedValue.value = faculaty;
  }
}
