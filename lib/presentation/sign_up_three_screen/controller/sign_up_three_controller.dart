import 'package:hotal_trade/core/app_export.dart';
import 'package:hotal_trade/presentation/sign_up_three_screen/models/sign_up_three_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpThreeScreen.
///
/// This class manages the state of the SignUpThreeScreen, including the
/// current signUpThreeModelObj
class SignUpThreeController extends GetxController {
  TextEditingController weburlController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  Rx<SignUpThreeModel> signUpThreeModelObj = SignUpThreeModel().obs;

  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('966').obs;

  @override
  void onClose() {
    super.onClose();
    weburlController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
  }
}
