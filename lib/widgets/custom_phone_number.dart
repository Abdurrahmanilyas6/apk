import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:abdurrahmanilyas6_s_application1/core/utils/validation_functions.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_text_form_field.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber(
      {required this.country, required this.onTap, required this.controller});

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.gray10002,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            10,
          ),
        ),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              _openCountryPicker(context);
            },
            child: Padding(
              padding: getPadding(
                left: 14,
                top: 19,
                bottom: 18,
              ),
              child: Row(
                children: [
                  CountryPickerUtils.getDefaultFlagImage(
                    country,
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgArrowdownBlack90001,
                    height: getVerticalSize(
                      24,
                    ),
                    width: getHorizontalSize(
                      23,
                    ),
                    margin: getMargin(
                      left: 4,
                      top: 1,
                      bottom: 2,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: getVerticalSize(
              64,
            ),
            width: getHorizontalSize(
              1,
            ),
            margin: getMargin(
              left: 13,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.blueGray100,
            ),
          ),
          Expanded(
            child: CustomTextFormField(
              width: getHorizontalSize(
                284,
              ),
              focusNode: FocusNode(),
              controller: controller,
              hintText: "lbl_phone_number".tr,
              margin: getMargin(
                left: 24,
                right: 6,
              ),
              variant: TextFormFieldVariant.None,
              textInputType: TextInputType.phone,
              validator: (value) {
                if (!isValidPhone(value)) {
                  return "Please enter valid phone number";
                }
                return null;
              },
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
              left: getHorizontalSize(10),
            ),
            width: getHorizontalSize(60.0),
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: getFontSize(14)),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: getFontSize(14)),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: getFontSize(14)),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: getFontSize(14))),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
