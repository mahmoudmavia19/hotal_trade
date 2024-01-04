import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:hotal_trade/core/app_export.dart';
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
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                        3.h,
                      ),
                      child: CountryPickerUtils.getDefaultFlagImage(
                        country,
                      ),
                    ),
                   SizedBox(width: 2,),
                   SizedBox(
                     width: 7,
                       child: Icon(Icons.keyboard_arrow_down)),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                right: 5.h,
              ),
              child: CustomTextFormField(
                width: 240.h,
                controller: controller,
                hintText: "+${country.phoneCode}".tr,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: 50.h,
            ),
            width: 60.h,
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(

    context: context,
    builder: (context) => Container(
      // width: 500.0, // Set the width of the dialog
      // height: 0.0, // Set the height of the dialog
      child: CountryPickerDialog(
        searchInputDecoration: InputDecoration(
          hintText: 'البحث ',
          hintStyle: TextStyle(fontSize: 14.0,textBaseline: TextBaseline.alphabetic),
        ),
        isSearchable: true,
        title: Text('حددالدوله', style: TextStyle(fontSize: 14.0)),
        onValuePicked: (Country country) => onTap(country),
        itemBuilder: _buildDialogItem,


      ),
    ),
  );
}
