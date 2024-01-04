import 'package:camera/camera.dart';
import 'package:hotal_trade/core/app_export.dart';
import 'package:hotal_trade/presentation/upload_photo_screen/models/upload_photo_model.dart';

/// A controller class for the UploadPhotoScreen.
///
/// This class manages the state of the UploadPhotoScreen, including the
/// current uploadPhotoModelObj
class UploadPhotoController extends GetxController {
  Rx<UploadPhotoModel> uploadPhotoModelObj = UploadPhotoModel().obs;
  late CameraController _cameraController;
  RxBool isCameraInitialized = false.obs;
  Rx<XFile?> photo = Rx<XFile?>(null);
  Future<void> initializeCamera() async {
    List<CameraDescription> cameras = await availableCameras();

    CameraDescription frontCamera = cameras.firstWhere(
          (camera) => camera.lensDirection == CameraLensDirection.front,
      orElse: () => cameras.first,
    );
    _cameraController = CameraController(
      frontCamera, // Use the front camera if available, otherwise use the first available camera
      ResolutionPreset.medium,
    );
    await _cameraController.initialize();
    if (_cameraController.value.isInitialized) {
      isCameraInitialized.value = true;
    }
  }
  CameraController get cameraController => _cameraController;


  void takePhoto() async {
    try {
      if (isCameraInitialized.value) {
         photo.value = await cameraController.takePicture();

        if (photo.value != null) {
          Get.back();
        } else {
          Get.snackbar("Error", "Failed to capture photo");
        }
      } else {
        // Handle if the camera is not initialized
        Get.snackbar("Error", "Camera not initialized");
      }
    } catch (e) {
      // Handle any exceptions that may occur during photo capture
      print("Error capturing photo: $e");
      Get.snackbar("Error", "Failed to capture photo");
    }
  }
  @override
  void onInit() async {
    super.onInit();
    initializeCamera();
  }
  @override
  void onClose() {
    super.onClose();
  }
}
