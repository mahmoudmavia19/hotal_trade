import 'package:hotal_trade/core/app_export.dart';
import 'package:hotal_trade/presentation/sign_up_two_screen/models/sign_up_two_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpTwoScreen.
///
/// This class manages the state of the SignUpTwoScreen, including the
/// current signUpTwoModelObj
class SignUpTwoController extends GetxController {
  TextEditingController vuesaxlinearcloudplusController =
      TextEditingController();

  TextEditingController editTextController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController eyeoffController = TextEditingController();

  Rx<SignUpTwoModel> signUpTwoModelObj = SignUpTwoModel().obs;

  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('966').obs;

  @override
  void onClose() {
    super.onClose();
    vuesaxlinearcloudplusController.dispose();
    editTextController.dispose();
    phoneNumberController.dispose();
    eyeoffController.dispose();
  }
}
