import '../../../core/app_export.dart';

/// This class is used in the [listofrows_item_widget] screen.
class ListofrowsItemModel {
  ListofrowsItemModel({
    this.phoneNumber,
    this.countryName,
    this.id,
  }) {
    phoneNumber = phoneNumber ?? Rx("+966");
    countryName = countryName ?? Rx("المملكة العربية السعودية");
    id = id ?? Rx("");
  }

  Rx<String>? phoneNumber;

  Rx<String>? countryName;

  Rx<String>? id;
}
