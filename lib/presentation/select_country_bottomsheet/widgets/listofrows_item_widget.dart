import '../controller/select_country_controller.dart';
import '../models/listofrows_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hotal_trade/core/app_export.dart';

// ignore: must_be_immutable
class ListofrowsItemWidget extends StatelessWidget {
  ListofrowsItemWidget(
    this.listofrowsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListofrowsItemModel listofrowsItemModelObj;

  var controller = Get.find<SelectCountryController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Obx(
            () => Text(
              listofrowsItemModelObj.phoneNumber!.value,
              style: CustomTextStyles.titleSmallPrimary,
            ),
          ),
        ),
        Obx(
          () => Text(
            listofrowsItemModelObj.countryName!.value,
            style: theme.textTheme.titleSmall,
          ),
        ),
      ],
    );
  }
}
