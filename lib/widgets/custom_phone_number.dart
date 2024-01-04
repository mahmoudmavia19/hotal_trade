import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:hotal_trade/core/app_export.dart';
import 'package:hotal_trade/presentation/select_country_bottomsheet/controller/select_country_controller.dart';
import 'package:hotal_trade/presentation/select_country_bottomsheet/select_country_bottomsheet.dart';
import 'package:hotal_trade/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber({
    Key? key,
    required this.country,
    required this.onTap,
    required this.controller,
  }) : super(
          key: key,
        );

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          6.h,
        ),
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                right: 5.h,
              ),
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: CustomTextFormField(
                  textInputType: TextInputType.phone,
                  width: 240.h,
                  controller: controller,
                  hintText: "+${country.phoneCode}".tr,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              _openCountryPicker(context);
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: appTheme.gray200,
                    width: 1.h,
                  ),
                ),
              ),
              child: Container(
                height: 24.v,
                width: 38.h,
                margin: EdgeInsets.only(
                  top: 12.v,
                  right: 32.h,
                  bottom: 12.v,
                ),
                child: Row(
                  children: [
                     SizedBox(
                     width: 7,
                       child: Icon(Icons.keyboard_arrow_down)),
                   SizedBox(width:2,),
                   ClipRRect(
                      borderRadius: BorderRadius.circular(
                        3.h,
                      ),
                      child: CountryPickerUtils.getDefaultFlagImage(
                        country,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _openCountryPicker(BuildContext context) =>Get.bottomSheet(
    SelectCountryBottomsheet(Get.find<SelectCountryController>())
  );
}
