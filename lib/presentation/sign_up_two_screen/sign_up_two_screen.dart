import 'controller/sign_up_two_controller.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:hotal_trade/core/app_export.dart';
import 'package:hotal_trade/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hotal_trade/widgets/app_bar/custom_app_bar.dart';
import 'package:hotal_trade/widgets/custom_elevated_button.dart';
import 'package:hotal_trade/widgets/custom_phone_number.dart';
import 'package:hotal_trade/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpTwoScreen extends GetWidget<SignUpTwoController> {
  const SignUpTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 3.v,
          ),
          child: Column(
            children: [
              _buildFrameRow(),
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
              _buildDefaultColumn(),
              SizedBox(height: 18.v),
              _buildDefaultColumn1(),
              SizedBox(height: 17.v),
              _buildPhoneNumberInputColumn(),
              SizedBox(height: 16.v),
              _buildDefaultColumn2(),
              SizedBox(height: 24.v),
              CustomElevatedButton(
                text: "lbl20".tr,
                buttonStyle: CustomButtonStyles.fillGray,
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
              SizedBox(height: 14.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text(
                          "lbl21".tr,
                          style: CustomTextStyles.titleSmallPrimary,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "msg12".tr,
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
  Widget _buildFrameRow() {
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
  Widget _buildDefaultColumn() {
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
            controller: controller.vuesaxlinearcloudplusController,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(12.h, 13.v, 30.h, 13.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgVuesaxLinearCloudplus,
                height: 22.adaptSize,
                width: 22.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDefaultColumn1() {
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
            controller: controller.editTextController,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberInputColumn() {
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
  Widget _buildDefaultColumn2() {
    bool isIconVisible = true;
    bool obscureText=true;

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
            prefix: Container(
              margin: EdgeInsets.fromLTRB(12.h, 14.v, 30.h, 14.v),
              child: InkWell(
                onTap: (){
                  bool:true;
                },
                child: CustomImageView(

                  imagePath: ImageConstant.imgEyeoff,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
            obscureText: false,
          ),
        ],
      ),
    );
  }
}
