import 'package:hotal_trade/presentation/splash_screen/splash_screen.dart';
import 'package:hotal_trade/presentation/splash_screen/binding/splash_binding.dart';
import 'package:hotal_trade/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:hotal_trade/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:hotal_trade/presentation/log_in_screen/log_in_screen.dart';
import 'package:hotal_trade/presentation/log_in_screen/binding/log_in_binding.dart';
import 'package:hotal_trade/presentation/upload_photo_screen/upload_photo_screen.dart';
import 'package:hotal_trade/presentation/upload_photo_screen/binding/upload_photo_binding.dart';
import 'package:hotal_trade/presentation/sign_up_two_screen/sign_up_two_screen.dart';
import 'package:hotal_trade/presentation/sign_up_two_screen/binding/sign_up_two_binding.dart';
import 'package:hotal_trade/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:hotal_trade/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String logInScreen = '/log_in_screen';


  static const String uploadPhotoScreen = '/upload_photo_screen';

  static const String signUpTwoScreen = '/sign_up_two_screen';


  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
        UploadPhotoBinding(),
      ],
    ),
    GetPage(
      name: logInScreen,
      page: () => LogInScreen(),
      bindings: [
        LogInBinding(),
      ],
    ),
    GetPage(
      name: uploadPhotoScreen,
      page: () => UploadPhotoScreen(),
      bindings: [
        UploadPhotoBinding(),
      ],
    ),
    GetPage(
      name: signUpTwoScreen,
      page: () => SignUpTwoScreen(),
      bindings: [
        SignUpTwoBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
