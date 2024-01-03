import 'controller/sign_up_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:hotal_trade/core/app_export.dart';
import 'package:hotal_trade/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hotal_trade/widgets/app_bar/custom_app_bar.dart';
import 'package:hotal_trade/widgets/custom_elevated_button.dart';
import 'package:hotal_trade/widgets/custom_icon_button.dart';
import 'package:hotal_trade/widgets/custom_text_form_field.dart';

class SignUpOneScreen extends GetWidget<SignUpOneController> {
  const SignUpOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 3.v),
                child: Column(children: [
                  _buildFrame(),
                  SizedBox(height: 2.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text("msg".tr, style: theme.textTheme.bodyLarge)),
                  SizedBox(height: 25.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child:
                          Text("lbl3".tr, style: theme.textTheme.titleSmall)),
                  SizedBox(height: 6.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                          height: 71.v,
                          width: 70.h,
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse1130,
                                    height: 70.adaptSize,
                                    width: 70.adaptSize,
                                    radius: BorderRadius.circular(35.h),
                                    alignment: Alignment.center),
                                CustomIconButton(
                                    height: 22.adaptSize,
                                    width: 22.adaptSize,
                                    padding: EdgeInsets.all(5.h),
                                    alignment: Alignment.bottomRight,
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgTelevision))
                              ]))),
                  SizedBox(height: 17.v),
                  _buildInputError(),
                  SizedBox(height: 18.v),
                  _buildInputError1(),
                  SizedBox(height: 24.v),
                  CustomElevatedButton(
                      text: "lbl6".tr,
                      onPressed: () {
                        onTaptf();
                      }),
                  SizedBox(height: 25.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("lbl7".tr,
                                style: CustomTextStyles.titleSmallPrimary),
                            Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Text("msg2".tr,
                                    style: theme.textTheme.bodyMedium))
                          ])),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(actions: [
      AppbarTrailingImage(
          imagePath: ImageConstant.imgVector, margin: EdgeInsets.all(22.h))
    ]);
  }

  /// Section Widget
  Widget _buildFrame() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 8.v, bottom: 6.v),
          child: Text("lbl_1_2".tr, style: theme.textTheme.bodyMedium)),
      Text("lbl".tr, style: theme.textTheme.headlineSmall)
    ]);
  }

  /// Section Widget
  Widget _buildInputError() {
    return Column(children: [
      Align(
          alignment: Alignment.centerRight,
          child: Text("lbl4".tr, style: theme.textTheme.titleSmall)),
      SizedBox(height: 6.v),
      CustomTextFormField(
          controller: controller.firstNameValueController, hintText: "lbl16".tr)
    ]);
  }

  /// Section Widget
  Widget _buildInputError1() {
    return Column(children: [
      Align(
          alignment: Alignment.centerRight,
          child: Text("lbl5".tr, style: theme.textTheme.titleSmall)),
      SizedBox(height: 5.v),
      CustomTextFormField(
          controller: controller.lastNameValueController,
          hintText: "lbl17".tr,
          textInputAction: TextInputAction.done)
    ]);
  }

  /// Navigates to the signUpThreeScreen when the action is triggered.
  onTaptf() {
    Get.toNamed(
      AppRoutes.signUpThreeScreen,
    );
  }
}
