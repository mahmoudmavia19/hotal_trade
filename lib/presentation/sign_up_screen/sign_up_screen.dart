import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:hotal_trade/core/app_export.dart';
import 'package:hotal_trade/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hotal_trade/widgets/app_bar/custom_app_bar.dart';
import 'package:hotal_trade/widgets/custom_elevated_button.dart';
import 'package:hotal_trade/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  const SignUpScreen({Key? key})
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
            horizontal: 20.h,
            vertical: 3.v,
          ),
          child: Column(
            children: [
              _buildFrameRow(),
              SizedBox(height: 2.v),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "msg".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 25.v),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 2.v),
                      child: Text(
                        "lbl2".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl3".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7.v),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.uploadPhotoScreen);
                },
                child: CustomImageView(
                  imagePath: ImageConstant.imgUser,
                  height: 70.adaptSize,
                  width: 70.adaptSize,
                  alignment: Alignment.centerRight,
                ),
              ),
              SizedBox(height: 17.v),
              _buildDefaultColumn(),
              SizedBox(height: 18.v),
              _buildDefaultColumn1(),
              SizedBox(height: 24.v),
              CustomElevatedButton(
                text: "lbl6".tr,
                buttonStyle: CustomButtonStyles.fillGray,
              ),
              SizedBox(height: 25.v),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.toNamed(AppRoutes.logInScreen);
                      },
                      child: Text(
                        "lbl7".tr,
                        style: CustomTextStyles.titleSmallPrimary,
                      ),
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
        IconButton(onPressed: () {

        }, icon: Icon(Icons.close)),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 8.v,
            bottom: 6.v,
          ),
          child: Text(
            "lbl_1_2".tr,
            style: theme.textTheme.bodyMedium,
          ),
        ),
        Text(
          "lbl".tr,
          style: theme.textTheme.headlineSmall,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDefaultColumn() {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "lbl4".tr,
            style: theme.textTheme.titleSmall,
          ),
        ),
        SizedBox(height: 6.v),
        CustomTextFormField(
          controller: controller.editTextController,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDefaultColumn1() {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "lbl5".tr,
            style: theme.textTheme.titleSmall,
          ),
        ),
        SizedBox(height: 5.v),
        CustomTextFormField(
          controller: controller.editTextController1,
          textInputAction: TextInputAction.done,
        ),
      ],
    );
  }
}
