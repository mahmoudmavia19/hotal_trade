import 'package:blur/blur.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotal_trade/core/app_export.dart';

import '../../core/utils/image_constant.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/upload_photo_controller.dart';

class UploadPhotoScreen extends GetWidget<UploadPhotoController> {
  const UploadPhotoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 614.v,
          width: double.maxFinite,
          child: Blur(
            child: _Camera(),
            overlay: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(190.h),
                    border: Border.all(
                      color: Colors.white,
                      width: 4.v,
                    )
              ),
              child: Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: _Camera(),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(185.h)
                ),
                height: 370.v,
                width: 311.h,
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildFrame(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 32.v,
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgVectorOnerrorcontainer,
          margin: EdgeInsets.symmetric(horizontal: 22.h, vertical: 10.v),
        ),
      ],
    );
  }

  Widget _buildFrame() {
    return Container(
      margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 50.v),
      decoration: AppDecoration.fillOnErrorContainer,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 270.h,
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            decoration: AppDecoration.fillOnErrorContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder1,
            ),
            child: Text("msg10".tr, style: theme.textTheme.titleMedium),
          ),
          CustomElevatedButton(
            text: "lbl18".tr,
            margin: EdgeInsets.only(top: 16.v),
            onPressed: () {
              controller.takePhoto();
            },
          ),
        ],
      ),
    );
  }

  _Camera() => Obx(
        () {
      if (!controller.isCameraInitialized.value) {
        return Center(child: CircularProgressIndicator());
      }
      return CameraPreview(controller.cameraController);
    },
  );
}
