import 'package:hotal_trade/presentation/upload_photo_screen/controller/upload_photo_controller.dart';

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
          child: Form(
            key: controller.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildFrameRow(),
                SizedBox(height: 2.v),
                Text(
                  "msg".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 25.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl3".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.v),
                      child: Text(
                        "lbl2".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7.v),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.uploadPhotoScreen);
                  },
                  child: Obx(() {
                      return Container(
                        height: 70.adaptSize,
                        width: 70.adaptSize,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(35.adaptSize),
                        ),
                        child:
                        Get.find<UploadPhotoController>().photo.value?.path != null ?
                        Stack(
                          children: [
                            CustomImageView(
                              imagePath: Get.find<UploadPhotoController>().photo.value?.path,
                              height: 70.adaptSize,
                              width: 70.adaptSize,
                              alignment: Alignment.centerRight,
                            ),
                            Align(
                              alignment: AlignmentDirectional.bottomStart,
                              child: CircleAvatar(
                                radius: 11.v,
                                backgroundColor: Colors.white,
                                child:CustomImageView(
                                imagePath: ImageConstant.imgTelevision,
                              ) ,),
                            )
                          ],
                        ):
                        CustomImageView(
                          imagePath:ImageConstant.imgUser,
                          height: 70.adaptSize,
                          width: 70.adaptSize,
                          alignment: Alignment.centerRight,
                        ),
                      );
                    }
                  ),
                ),
                SizedBox(height: 17.v),
                _buildDefaultColumn(),
                SizedBox(height: 18.v),
                _buildDefaultColumn1(),
                SizedBox(height: 24.v),
                Obx(() {
                    return CustomElevatedButton(
                      onPressed: () {
                        Get.toNamed(AppRoutes.signUpTwoScreen);
                      },
                      text: "lbl6".tr,
                      buttonStyle: controller.activeNextButton.value? null: CustomButtonStyles.fillGray,
                    );
                  }
                ),
                SizedBox(height: 25.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Text(
                        "msg2".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(AppRoutes.logInScreen);
                      },
                      child: Text(
                        "lbl7".tr,
                        style: CustomTextStyles.titleSmallPrimary,
                      ),
                    ),
                  ],
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
     leading:   AppbarTrailingImage(
       onTap:(){
         Get.back();
       },
       imagePath: ImageConstant.imgVector,
       margin: EdgeInsets.all(22.h),
     ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "lbl".tr,
          style: theme.textTheme.headlineSmall,
        ),
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
          validator: (value) {
            if(value!.isEmpty){
              return "This field is required";
            }
          },
          onChanged:(value) {
            controller.checkEmpty();
          },
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
          validator: (value) {
            if(value!.isEmpty){
              return "This field is required";
            }
          },
          onChanged:(value) {
            controller.checkEmpty();
          },
          controller: controller.editTextController1,
          textInputAction: TextInputAction.done,
        ),
      ],
    );
  }
}
