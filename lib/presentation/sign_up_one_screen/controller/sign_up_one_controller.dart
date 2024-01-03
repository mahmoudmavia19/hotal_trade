import 'package:hotal_trade/core/app_export.dart';
import 'package:hotal_trade/presentation/sign_up_one_screen/models/sign_up_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpOneScreen.
///
/// This class manages the state of the SignUpOneScreen, including the
/// current signUpOneModelObj
class SignUpOneController extends GetxController {
  TextEditingController firstNameValueController = TextEditingController();

  TextEditingController lastNameValueController = TextEditingController();

  Rx<SignUpOneModel> signUpOneModelObj = SignUpOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    firstNameValueController.dispose();
    lastNameValueController.dispose();
  }
}
