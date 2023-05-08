import 'controller/add_new_address_controller.dart';
import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:abdurrahmanilyas6_s_application1/core/utils/validation_functions.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_button.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_checkbox.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AddNewAddressScreen extends GetWidget<AddNewAddressController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.green500,
        appBar: CustomAppBar(
          height: getVerticalSize(
            60,
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
              top: 15,
              bottom: 14,
            ),
          ),
          title: AppbarTitle(
            text: "lbl_add_new_address".tr,
            margin: getMargin(
              left: 15,
            ),
          ),
        ),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            child: Container(
              width: double.maxFinite,
              margin: getMargin(
                top: 10,
              ),
              padding: getPadding(
                all: 48,
              ),
              decoration: AppDecoration.fillWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL30,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTextFormField(
                    focusNode: FocusNode(),
                    controller: controller.countryController,
                    hintText: "lbl_country".tr,
                  ),
                  CustomTextFormField(
                    focusNode: FocusNode(),
                    controller: controller.stateController,
                    hintText: "lbl_state".tr,
                    margin: getMargin(
                      top: 16,
                    ),
                  ),
                  CustomTextFormField(
                    focusNode: FocusNode(),
                    controller: controller.cityController,
                    hintText: "lbl_city".tr,
                    margin: getMargin(
                      top: 16,
                    ),
                  ),
                  CustomTextFormField(
                    focusNode: FocusNode(),
                    controller: controller.pincodeController,
                    hintText: "lbl_pincode".tr,
                    margin: getMargin(
                      top: 16,
                    ),
                    textInputType: TextInputType.number,
                    validator: (value) {
                      if (!isNumeric(value)) {
                        return "Please enter valid number";
                      }
                      return null;
                    },
                  ),
                  CustomTextFormField(
                    focusNode: FocusNode(),
                    controller: controller.areaController,
                    hintText: "lbl_area".tr,
                    margin: getMargin(
                      top: 16,
                    ),
                  ),
                  CustomTextFormField(
                    focusNode: FocusNode(),
                    controller: controller.landmarkController,
                    hintText: "lbl_landmark".tr,
                    margin: getMargin(
                      top: 16,
                    ),
                    textInputAction: TextInputAction.done,
                  ),
                  Container(
                    height: getVerticalSize(
                      18,
                    ),
                    width: getHorizontalSize(
                      297,
                    ),
                    margin: getMargin(
                      top: 15,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Obx(
                            () => CustomCheckbox(
                              alignment: Alignment.centerLeft,
                              text: "lbl_home".tr,
                              iconSize: getHorizontalSize(
                                17,
                              ),
                              value: controller.isCheckbox.value,
                              fontStyle: CheckboxFontStyle.MontserratRegular14,
                              onChange: (value) {
                                controller.isCheckbox.value = value;
                              },
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Obx(
                            () => CustomCheckbox(
                              alignment: Alignment.center,
                              text: "lbl_work_office".tr,
                              iconSize: getHorizontalSize(
                                17,
                              ),
                              value: controller.isCheckbox1.value,
                              fontStyle: CheckboxFontStyle.MontserratRegular14,
                              onChange: (value) {
                                controller.isCheckbox1.value = value;
                              },
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Obx(
                            () => CustomCheckbox(
                              alignment: Alignment.centerRight,
                              text: "lbl_other".tr,
                              iconSize: getHorizontalSize(
                                17,
                              ),
                              value: controller.isCheckbox2.value,
                              fontStyle: CheckboxFontStyle.MontserratRegular14,
                              onChange: (value) {
                                controller.isCheckbox2.value = value;
                              },
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Obx(
                            () => CustomCheckbox(
                              alignment: Alignment.centerLeft,
                              width: getHorizontalSize(
                                83,
                              ),
                              text: "lbl_home".tr,
                              iconSize: getHorizontalSize(
                                17,
                              ),
                              value: controller.isCheckbox3.value,
                              margin: getMargin(
                                left: 25,
                              ),
                              fontStyle: CheckboxFontStyle.MontserratRegular14,
                              isRightCheck: true,
                              onChange: (value) {
                                controller.isCheckbox3.value = value;
                              },
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Obx(
                            () => CustomCheckbox(
                              alignment: Alignment.centerLeft,
                              width: getHorizontalSize(
                                222,
                              ),
                              text: "lbl_home".tr,
                              iconSize: getHorizontalSize(
                                17,
                              ),
                              value: controller.isCheckbox4.value,
                              margin: getMargin(
                                left: 25,
                              ),
                              fontStyle: CheckboxFontStyle.MontserratRegular14,
                              isRightCheck: true,
                              onChange: (value) {
                                controller.isCheckbox4.value = value;
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    height: getVerticalSize(
                      50,
                    ),
                    width: getHorizontalSize(
                      199,
                    ),
                    text: "lbl_save".tr,
                    margin: getMargin(
                      top: 29,
                      bottom: 5,
                    ),
                    alignment: Alignment.center,
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
