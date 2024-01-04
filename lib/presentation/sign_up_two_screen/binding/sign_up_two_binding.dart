import 'package:hotal_trade/presentation/select_country_bottomsheet/controller/select_country_controller.dart';

import '../controller/sign_up_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpTwoScreen.
///
/// This class ensures that the SignUpTwoController is created when the
/// SignUpTwoScreen is first loaded.
class SignUpTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpTwoController());
    Get.lazyPut(() => SelectCountryController());
  }
}
