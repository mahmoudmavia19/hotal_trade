import 'package:hotal_trade/core/app_export.dart';
import 'package:hotal_trade/presentation/upload_photo_screen/models/upload_photo_model.dart';

/// A controller class for the UploadPhotoScreen.
///
/// This class manages the state of the UploadPhotoScreen, including the
/// current uploadPhotoModelObj
class UploadPhotoController extends GetxController {
  Rx<UploadPhotoModel> uploadPhotoModelObj = UploadPhotoModel().obs;
}
