import '../select_country_bottomsheet/widgets/listofrows_item_widget.dart';
import 'controller/select_country_controller.dart';
import 'models/listofrows_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hotal_trade/core/app_export.dart';
import 'package:hotal_trade/widgets/custom_search_view.dart';

class SelectCountryBottomsheet extends StatelessWidget {
  SelectCountryBottomsheet(
    this.controller, {
    Key? key,
  }) : super(key: key,);

  SelectCountryController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL16,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildRowWithTextAndImage(),
            SizedBox(height: 16.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: CustomSearchView(
                autofocus: false,
                controller: controller.searchController,
                hintText: "lbl9".tr,
              ),
            ),
            SizedBox(height: 27.v),
            _buildListOfRows(),
            SizedBox(height: 33.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowWithTextAndImage() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(20.h, 15.v, 20.h, 14.v),
      decoration: AppDecoration.outlineGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(
                left: 109.h,
                top: 1.v,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "lbl8".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListOfRows() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 9.5.v),
              child: SizedBox(
                width: 335.h,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                  color: theme.colorScheme.onPrimary,
                ),
              ),
            );
          },
          itemCount: controller
              .selectCountryModelObj.value.listofrowsItemList.value.length,
          itemBuilder: (context, index) {
            ListofrowsItemModel model = controller
                .selectCountryModelObj.value.listofrowsItemList.value[index];
            return ListofrowsItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
