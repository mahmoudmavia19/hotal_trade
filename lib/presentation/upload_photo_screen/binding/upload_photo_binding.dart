import '../controller/upload_photo_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UploadPhotoScreen.
///
/// This class ensures that the UploadPhotoController is created when the
/// UploadPhotoScreen is first loaded.
class UploadPhotoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UploadPhotoController());
  }
}
