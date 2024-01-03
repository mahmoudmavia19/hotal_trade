import 'controller/sign_up_three_controller.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:hotal_trade/core/app_export.dart';
import 'package:hotal_trade/core/utils/validation_functions.dart';
import 'package:hotal_trade/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hotal_trade/widgets/app_bar/custom_app_bar.dart';
import 'package:hotal_trade/widgets/custom_elevated_button.dart';
import 'package:hotal_trade/widgets/custom_phone_number.dart';
import 'package:hotal_trade/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpThreeScreen extends GetWidget<SignUpThreeController> {
  SignUpThreeScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 3.v,
            ),
            child: Column(
              children: [
                _buildFrame(),
                SizedBox(height: 2.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 1.h),
                    child: Text(
                      "msg".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
                SizedBox(height: 25.v),
                _buildDefault(),
                SizedBox(height: 18.v),
                _buildInputError(),
                SizedBox(height: 17.v),
                _buildPhoneNumberInput(),
                SizedBox(height: 16.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "lbl15".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 7.v),
                _buildFrame1(),
                SizedBox(height: 8.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 81.h,
                      right: 1.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "msg13".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgHugeIconInterBlueGray900,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(left: 4.h),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 22.v),
                CustomElevatedButton(
                  text: "lbl20".tr,
                ),
                SizedBox(height: 25.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 1.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "lbl7".tr,
                          style: CustomTextStyles.titleSmallPrimary,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text(
                            "msg2".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgVector,
          margin: EdgeInsets.all(22.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              bottom: 6.v,
            ),
            child: Text(
              "lbl_2_2".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Text(
            "lbl".tr,
            style: theme.textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDefault() {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 1.h),
              child: Text(
                "msg11".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          SizedBox(height: 6.v),
          CustomTextFormField(
            controller: controller.weburlController,
            hintText: "lbl_img_png".tr,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(-77.h, 13.v, 30.h, 13.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgClaritywindowcloseline,
                height: 22.adaptSize,
                width: 22.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
            contentPadding: EdgeInsets.only(
              left: 30.h,
              top: 13.v,
              bottom: 13.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInputError() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "msg7".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 5.v),
          CustomTextFormField(
            controller: controller.emailController,
            hintText: "msg_khalil_gmail_com".tr,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberInput() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "lbl19".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 6.v),
          Obx(
            () => CustomPhoneNumber(
              country: controller.selectedCountry.value,
              controller: controller.phoneNumberController,
              onTap: (Country value) {
                controller.selectedCountry.value = value;
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineBlueGrayC.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSearch,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
          Spacer(),
          SizedBox(
            height: 18.v,
            child: VerticalDivider(
              width: 2.h,
              thickness: 2.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "lbl_7841288".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
