import '../payment_screen/widgets/payment_item_widget.dart';
import 'controller/payment_controller.dart';
import 'models/payment_item_model.dart';
import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:abdurrahmanilyas6_s_application1/core/utils/validation_functions.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_button.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_phone_number.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_radio_button.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_text_form_field.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PaymentScreen extends GetWidget<PaymentController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.green500,
        appBar: CustomAppBar(
          height: getVerticalSize(
            62,
          ),
          leadingWidth: 29,
          leading: AppbarImage(
            height: getVerticalSize(
              26,
            ),
            width: getHorizontalSize(
              13,
            ),
            svgPath: ImageConstant.imgForwardWhiteA700,
            margin: getMargin(
              left: 16,
              top: 13,
              bottom: 16,
            ),
          ),
          title: AppbarTitle(
            text: "lbl_payment".tr,
            margin: getMargin(
              left: 16,
            ),
          ),
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 8,
            ),
            child: Container(
              height: getVerticalSize(
                1958,
              ),
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: getPadding(
                        left: 16,
                        top: 23,
                        right: 16,
                        bottom: 23,
                      ),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL30,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_contact_details".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratSemiBold22Black90001,
                          ),
                          CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: controller.firstnameController,
                            hintText: "lbl_first_name".tr,
                            margin: getMargin(
                              top: 24,
                            ),
                            validator: (value) {
                              if (!isText(value)) {
                                return "Please enter valid text";
                              }
                              return null;
                            },
                          ),
                          CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: controller.lastnameController,
                            hintText: "lbl_last_name".tr,
                            margin: getMargin(
                              top: 16,
                            ),
                            validator: (value) {
                              if (!isText(value)) {
                                return "Please enter valid text";
                              }
                              return null;
                            },
                          ),
                          CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: controller.emailController,
                            hintText: "lbl_email".tr,
                            margin: getMargin(
                              top: 16,
                            ),
                            textInputType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidEmail(value, isRequired: true))) {
                                return "Please enter valid email";
                              }
                              return null;
                            },
                          ),
                          Padding(
                            padding: getPadding(
                              top: 16,
                            ),
                            child: Obx(
                              () => CustomPhoneNumber(
                                country: controller.selectedCountry.value,
                                controller: controller.phoneNumberController,
                                onTap: (Country country) {
                                  controller.selectedCountry.value = country;
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 31,
                            ),
                            child: Text(
                              "msg_choose_delivery".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratSemiBold22Black90001,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 22,
                            ),
                            child: Obx(
                              () => ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    height: getVerticalSize(
                                      24,
                                    ),
                                  );
                                },
                                itemCount: controller.paymentModelObj.value
                                    .paymentItemList.value.length,
                                itemBuilder: (context, index) {
                                  PaymentItemModel model = controller
                                      .paymentModelObj
                                      .value
                                      .paymentItemList
                                      .value[index];
                                  return PaymentItemWidget(
                                    model,
                                  );
                                },
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: getPadding(
                                top: 15,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgPlusGreen50018x17,
                                    height: getVerticalSize(
                                      18,
                                    ),
                                    width: getHorizontalSize(
                                      17,
                                    ),
                                    margin: getMargin(
                                      top: 2,
                                      bottom: 1,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 7,
                                    ),
                                    child: Text(
                                      "lbl_add_new_address".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratSemiBold18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 30,
                            ),
                            child: Text(
                              "msg_do_you_have_a_promo".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratSemiBold18Black90001,
                            ),
                          ),
                          CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: controller.frameController,
                            hintText: "lbl_enter_your_code".tr,
                            margin: getMargin(
                              top: 11,
                            ),
                            padding: TextFormFieldPadding.PaddingT22,
                            fontStyle: TextFormFieldFontStyle
                                .MontserratRegular16Gray40001,
                            textInputAction: TextInputAction.done,
                            prefix: Container(
                              margin: getMargin(
                                left: 25,
                                top: 20,
                                right: 10,
                                bottom: 20,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.gray40001,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgOffer,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(
                                64,
                              ),
                            ),
                          ),
                          CustomButton(
                            height: getVerticalSize(
                              50,
                            ),
                            width: getHorizontalSize(
                              200,
                            ),
                            text: "lbl_apply_now".tr,
                            margin: getMargin(
                              top: 24,
                            ),
                            alignment: Alignment.center,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 31,
                            ),
                            child: Text(
                              "msg_choose_payment_method".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratSemiBold22Gray800,
                            ),
                          ),
                          Container(
                            width: double.maxFinite,
                            child: Container(
                              width: getHorizontalSize(
                                396,
                              ),
                              margin: getMargin(
                                top: 14,
                              ),
                              padding: getPadding(
                                left: 17,
                                top: 16,
                                right: 17,
                                bottom: 16,
                              ),
                              decoration: AppDecoration.fillGray10003.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 3,
                                    ),
                                    child: Obx(
                                      () => CustomRadioButton(
                                        text: "msg_cash_on_delivery".tr,
                                        iconSize: getHorizontalSize(
                                          18,
                                        ),
                                        value: "msg_cash_on_delivery".tr,
                                        groupValue: controller.radioGroup.value,
                                        margin: getMargin(
                                          top: 3,
                                        ),
                                        fontStyle:
                                            RadioFontStyle.MontserratRegular16,
                                        onChange: (value) {
                                          controller.radioGroup.value = value;
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: double.maxFinite,
                            child: Container(
                              width: getHorizontalSize(
                                396,
                              ),
                              margin: getMargin(
                                top: 16,
                              ),
                              padding: getPadding(
                                all: 17,
                              ),
                              decoration: AppDecoration.fillGray10003.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 1,
                                    ),
                                    child: Obx(
                                      () => CustomRadioButton(
                                        text: "lbl_upi".tr,
                                        iconSize: getHorizontalSize(
                                          18,
                                        ),
                                        value: "lbl_upi".tr,
                                        groupValue:
                                            controller.radioGroup1.value,
                                        margin: getMargin(
                                          top: 1,
                                        ),
                                        fontStyle:
                                            RadioFontStyle.MontserratRegular16,
                                        onChange: (value) {
                                          controller.radioGroup1.value = value;
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: double.maxFinite,
                            child: Container(
                              width: getHorizontalSize(
                                396,
                              ),
                              margin: getMargin(
                                top: 16,
                              ),
                              padding: getPadding(
                                left: 17,
                                top: 18,
                                right: 17,
                                bottom: 18,
                              ),
                              decoration: AppDecoration.fillGray10003.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Obx(
                                    () => CustomRadioButton(
                                      text: "lbl_wallet".tr,
                                      iconSize: getHorizontalSize(
                                        18,
                                      ),
                                      value: "lbl_wallet".tr,
                                      groupValue: controller.radioGroup2.value,
                                      fontStyle:
                                          RadioFontStyle.MontserratRegular16,
                                      onChange: (value) {
                                        controller.radioGroup2.value = value;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: double.maxFinite,
                            child: Container(
                              width: getHorizontalSize(
                                396,
                              ),
                              margin: getMargin(
                                top: 16,
                              ),
                              padding: getPadding(
                                all: 17,
                              ),
                              decoration: AppDecoration.fillGray10003.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 1,
                                    ),
                                    child: Obx(
                                      () => CustomRadioButton(
                                        text: "msg_credit_debit_card".tr,
                                        iconSize: getHorizontalSize(
                                          18,
                                        ),
                                        value: "msg_credit_debit_card".tr,
                                        groupValue:
                                            controller.radioGroup3.value,
                                        margin: getMargin(
                                          top: 1,
                                        ),
                                        fontStyle:
                                            RadioFontStyle.MontserratRegular16,
                                        onChange: (value) {
                                          controller.radioGroup3.value = value;
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: getPadding(
                                top: 16,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgIconGreen500,
                                    height: getSize(
                                      16,
                                    ),
                                    width: getSize(
                                      16,
                                    ),
                                    margin: getMargin(
                                      top: 1,
                                      bottom: 2,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 4,
                                    ),
                                    child: Text(
                                      "lbl_add_new_card".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratSemiBold16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: getVerticalSize(
                                42,
                              ),
                              width: getHorizontalSize(
                                364,
                              ),
                              margin: getMargin(
                                top: 198,
                              ),
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      margin: getMargin(
                                        right: 4,
                                      ),
                                      padding: getPadding(
                                        left: 23,
                                        top: 10,
                                        right: 23,
                                        bottom: 10,
                                      ),
                                      decoration:
                                          AppDecoration.fillGreen500.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_enter_cvv".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRegular16WhiteA700,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      height: getVerticalSize(
                                        42,
                                      ),
                                      width: getHorizontalSize(
                                        242,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgCardWhiteA70042x242,
                                            height: getVerticalSize(
                                              42,
                                            ),
                                            width: getHorizontalSize(
                                              242,
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 16,
                                                bottom: 9,
                                              ),
                                              child: Text(
                                                "lbl_e_g_123".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRegular16Gray40002,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomButton(
                            height: getVerticalSize(
                              50,
                            ),
                            width: getHorizontalSize(
                              200,
                            ),
                            text: "lbl_pay_9_97".tr,
                            margin: getMargin(
                              top: 30,
                            ),
                            alignment: Alignment.center,
                          ),
                          Container(
                            width: getHorizontalSize(
                              377,
                            ),
                            margin: getMargin(
                              top: 17,
                              right: 18,
                              bottom: 73,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_your_personal_data2".tr,
                                    style: TextStyle(
                                      color: ColorConstant.gray50004,
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "lbl_privacy_policy".tr,
                                    style: TextStyle(
                                      color: ColorConstant.green500,
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "lbl".tr,
                                    style: TextStyle(
                                      color: ColorConstant.gray50004,
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: getPadding(
                        bottom: 326,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage151x250,
                            height: getVerticalSize(
                              151,
                            ),
                            width: getHorizontalSize(
                              250,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage150x148,
                            height: getVerticalSize(
                              150,
                            ),
                            width: getHorizontalSize(
                              148,
                            ),
                            margin: getMargin(
                              left: 14,
                              bottom: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
