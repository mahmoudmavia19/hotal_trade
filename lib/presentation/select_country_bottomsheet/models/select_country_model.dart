import '../../../core/app_export.dart';
import 'listofrows_item_model.dart';

/// This class defines the variables used in the [select_country_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectCountryModel {
  Rx<List<ListofrowsItemModel>> listofrowsItemList = Rx([
    ListofrowsItemModel(
        phoneNumber: "+966".obs, countryName: "المملكة العربية السعودية".obs),
    ListofrowsItemModel(
        phoneNumber: "+961".obs, countryName: "الامارات العربية المتحدة".obs),
    ListofrowsItemModel(phoneNumber: "+962".obs, countryName: "قطر".obs),
    ListofrowsItemModel(
        phoneNumber: "+964".obs, countryName: "جمهورية مصر العربية".obs),
    ListofrowsItemModel(phoneNumber: "+976".obs, countryName: "الجزائر".obs),
    ListofrowsItemModel(phoneNumber: "+956".obs, countryName: "العراق".obs),
    ListofrowsItemModel(phoneNumber: "+946".obs, countryName: "الكويت".obs),
    ListofrowsItemModel(phoneNumber: "+974".obs, countryName: "الاردن".obs)
  ]);
}
