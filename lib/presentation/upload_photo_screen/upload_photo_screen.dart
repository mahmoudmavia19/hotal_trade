import 'controller/upload_photo_controller.dart';
import 'package:flutter/material.dart';
import 'package:hotal_trade/core/app_export.dart';
import 'package:hotal_trade/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hotal_trade/widgets/app_bar/custom_app_bar.dart';
import 'package:hotal_trade/widgets/custom_elevated_button.dart';

class UploadPhotoScreen extends GetWidget<UploadPhotoController> {
  const UploadPhotoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: 614.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle935,
                      height: 614.v,
                      width: 375.h,
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 32.h, top: 16.v, right: 20.h),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildAppBar(),
                                SizedBox(height: 52.v),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgEllipse1130370x311,
                                    height: 370.v,
                                    width: 311.h,
                                    radius: BorderRadius.circular(185.h))
                              ])))
                ])),
            bottomNavigationBar: _buildFrame()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(height: 32.v, actions: [
      AppbarTrailingImage(
          imagePath: ImageConstant.imgVectorOnerrorcontainer,
          margin: EdgeInsets.symmetric(horizontal: 22.h, vertical: 10.v))
    ]);
  }

  /// Section Widget
  Widget _buildFrame() {
    return Container(
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 50.v),
        decoration: AppDecoration.fillOnErrorContainer,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
              width: 270.h,
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              decoration: AppDecoration.fillOnErrorContainer
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder1),
              child: Text("msg10".tr, style: theme.textTheme.titleMedium)),
          CustomElevatedButton(
              text: "lbl18".tr,
              margin: EdgeInsets.only(top: 16.v),
              onPressed: () {
                onTaptf();
              })
        ]));
  }

  /// Navigates to the signUpThreeScreen when the action is triggered.
  onTaptf() {
    Get.toNamed(
      AppRoutes.signUpThreeScreen,
    );
  }
}
