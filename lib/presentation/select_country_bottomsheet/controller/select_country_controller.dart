import 'package:hotal_trade/core/app_export.dart';
import 'package:hotal_trade/presentation/select_country_bottomsheet/models/select_country_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SelectCountryBottomsheet.
///
/// This class manages the state of the SelectCountryBottomsheet, including the
/// current selectCountryModelObj
class SelectCountryController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SelectCountryModel> selectCountryModelObj = SelectCountryModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
