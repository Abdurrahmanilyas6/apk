import 'controller/payment_add_new_address_controller.dart';
import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_button.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_checkbox.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PaymentAddNewAddressBottomsheet extends StatelessWidget {
  PaymentAddNewAddressBottomsheet(this.controller);

  PaymentAddNewAddressController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SingleChildScrollView(
            child: Container(
                padding: getPadding(left: 46, top: 20, right: 46, bottom: 20),
                decoration: AppDecoration.fillWhiteA700
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgCloseBlack90001,
                          height: getVerticalSize(24),
                          width: getHorizontalSize(23),
                          alignment: Alignment.centerRight,
                          onTap: () {
                            onTapImgClose();
                          }),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Text("lbl_add_new_address".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratSemiBold22)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.countryController,
                          hintText: "lbl_country".tr,
                          margin: getMargin(top: 24)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.stateController,
                          hintText: "lbl_state".tr,
                          margin: getMargin(top: 16)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.cityController,
                          hintText: "lbl_city".tr,
                          margin: getMargin(top: 16)),
                      Container(
                          height: getVerticalSize(64),
                          width: getHorizontalSize(332),
                          margin: getMargin(top: 16),
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: getVerticalSize(64),
                                    width: getHorizontalSize(332),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray10002,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(10))))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    width: getHorizontalSize(40),
                                    margin: getMargin(left: 20),
                                    child: Text("lbl_pincode".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratRegular18Gray50002)))
                          ])),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.areaController,
                          hintText: "lbl_area".tr,
                          margin: getMargin(top: 15)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.landmarkController,
                          hintText: "lbl_landmark".tr,
                          margin: getMargin(top: 16),
                          textInputAction: TextInputAction.done),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: getVerticalSize(36),
                              width: getHorizontalSize(297),
                              margin: getMargin(top: 14),
                              child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Obx(() => CustomCheckbox(
                                            alignment: Alignment.topLeft,
                                            text: "lbl_home".tr,
                                            iconSize: getHorizontalSize(17),
                                            value: controller.isCheckbox.value,
                                            margin: getMargin(top: 1),
                                            fontStyle: CheckboxFontStyle
                                                .MontserratRegular14,
                                            onChange: (value) {
                                              controller.isCheckbox.value =
                                                  value;
                                            }))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            width: getHorizontalSize(47),
                                            margin: getMargin(left: 116),
                                            child: Text("lbl_work_office".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRegular14Gray50002))),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Obx(() => CustomCheckbox(
                                            alignment: Alignment.topRight,
                                            text: "lbl_other".tr,
                                            iconSize: getHorizontalSize(17),
                                            value: controller.isCheckbox1.value,
                                            margin: getMargin(top: 1),
                                            fontStyle: CheckboxFontStyle
                                                .MontserratRegular14,
                                            onChange: (value) {
                                              controller.isCheckbox1.value =
                                                  value;
                                            }))),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Obx(() => CustomCheckbox(
                                            alignment: Alignment.topLeft,
                                            width: getHorizontalSize(83),
                                            text: "lbl_home".tr,
                                            iconSize: getHorizontalSize(17),
                                            value: controller.isCheckbox2.value,
                                            margin: getMargin(left: 25, top: 1),
                                            fontStyle: CheckboxFontStyle
                                                .MontserratRegular14,
                                            isRightCheck: true,
                                            onChange: (value) {
                                              controller.isCheckbox2.value =
                                                  value;
                                            }))),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Obx(() => CustomCheckbox(
                                            alignment: Alignment.topLeft,
                                            width: getHorizontalSize(222),
                                            text: "lbl_home".tr,
                                            iconSize: getHorizontalSize(17),
                                            value: controller.isCheckbox3.value,
                                            margin: getMargin(left: 25, top: 1),
                                            fontStyle: CheckboxFontStyle
                                                .MontserratRegular14,
                                            isRightCheck: true,
                                            onChange: (value) {
                                              controller.isCheckbox3.value =
                                                  value;
                                            })))
                                  ]))),
                      CustomButton(
                          height: getVerticalSize(50),
                          width: getHorizontalSize(199),
                          text: "lbl_save".tr,
                          margin: getMargin(top: 13, bottom: 27))
                    ]))));
  }

  onTapImgClose() {
    Get.back();
  }
}
