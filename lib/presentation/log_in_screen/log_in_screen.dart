import 'controller/log_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:hotal_trade/core/app_export.dart';
import 'package:hotal_trade/core/utils/validation_functions.dart';
import 'package:hotal_trade/widgets/app_bar/appbar_trailing_image_one.dart';
import 'package:hotal_trade/widgets/app_bar/custom_app_bar.dart';
import 'package:hotal_trade/widgets/custom_elevated_button.dart';
import 'package:hotal_trade/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends GetWidget<LogInController> {
  LogInScreen({Key? key})
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
              vertical: 6.v,
            ),
            child: Column(
              children: [
                _buildFrame(),
                SizedBox(height: 16.v),
                _buildColumn(),
                SizedBox(height: 16.v),
                _buildTen(),
                SizedBox(height: 8.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "msg9".tr,
                      style: CustomTextStyles.bodyMediumPrimary,
                    ),
                  ),
                ),
                SizedBox(height: 15.v),
                CustomElevatedButton(
                  text: "lbl7".tr,
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
    return AppBar(
    leading: AppbarTrailingImageOne(
      imagePath: ImageConstant.imgVector190,
      margin: EdgeInsets.fromLTRB(24.h, 22.v, 0.h, 23.v),
      onTap:(){
        Get.back();
      },
    ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 85.v,
        width: 308.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "lbl7".tr,
                style: theme.textTheme.headlineSmall,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 308.h,
                child: Text(
                  "msg6".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.right,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInputError() {
    return Column(
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
    );
  }

  /// Section Widget
  Widget _buildColumn() {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Column(
        children: [
          _buildInputError(),
          SizedBox(height: 8.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgHugeIconInter,
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(left: 4.h),
              ),
              Text(
                "msg8".tr,
                textAlign: TextAlign.right,
                style: CustomTextStyles.bodyMediumRed600,
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTen() {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "lbl15".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 7.v),
          CustomTextFormField(
            controller: controller.eyeoffController,
            textInputAction: TextInputAction.done,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(12.h, 14.v, 30.h, 14.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgEyeoff,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
            obscureText: true,
            borderDecoration: TextFormFieldStyleHelper.outlineGrayTL6,
          ),
        ],
      ),
    );
  }
}
