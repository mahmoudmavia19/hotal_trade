import 'package:hotal_trade/core/app_export.dart';
import 'package:hotal_trade/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpScreen.
///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  RxBool activeNextButton = false.obs;

  checkEmpty() {
    if (editTextController.text.isEmpty || editTextController1.text.isEmpty) {
      activeNextButton.value = false;
    }
    else {
      activeNextButton.value = true;
    }
  }

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
    editTextController1.dispose();
  }
}
