import 'controller/contact_us_controller.dart';
import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:abdurrahmanilyas6_s_application1/core/utils/validation_functions.dart';
import 'package:abdurrahmanilyas6_s_application1/presentation/home_screen_page/home_screen_page.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_bottom_bar.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_button.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_phone_number.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_text_form_field.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ContactUsScreen extends GetWidget<ContactUsController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.green500,
        appBar: CustomAppBar(
          height: getVerticalSize(
            61,
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
              top: 14,
              bottom: 15,
            ),
          ),
          title: AppbarTitle(
            text: "lbl_contact_us".tr,
            margin: getMargin(
              left: 16,
            ),
          ),
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 9,
            ),
            child: Container(
              padding: getPadding(
                left: 15,
                top: 30,
                right: 15,
                bottom: 30,
              ),
              decoration: AppDecoration.fillWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL30,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.maxFinite,
                    child: Container(
                      padding: getPadding(
                        left: 21,
                        top: 15,
                        right: 21,
                        bottom: 15,
                      ),
                      decoration: AppDecoration.outlineBlack9000c.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_get_in_touch".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratSemiBold22Black90001,
                          ),
                          Container(
                            width: getHorizontalSize(
                              353,
                            ),
                            margin: getMargin(
                              top: 30,
                              bottom: 8,
                            ),
                            child: Text(
                              "msg_one_of_our_workspace".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtMontserratRegular14Gray600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 23,
                    ),
                    child: Text(
                      "lbl_your_details".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratSemiBold22Black90001,
                    ),
                  ),
                  CustomTextFormField(
                    focusNode: FocusNode(),
                    controller: controller.firstnameController,
                    hintText: "lbl_first_name".tr,
                    margin: getMargin(
                      top: 11,
                    ),
                    padding: TextFormFieldPadding.PaddingT21,
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
                    padding: TextFormFieldPadding.PaddingT21,
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
                    padding: TextFormFieldPadding.PaddingT21,
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
                  CustomTextFormField(
                    focusNode: FocusNode(),
                    controller: controller.additionalinfoController,
                    hintText: "lbl_additional_info".tr,
                    margin: getMargin(
                      top: 16,
                    ),
                    padding: TextFormFieldPadding.PaddingT71,
                    maxLines: 7,
                  ),
                  CustomButton(
                    height: getVerticalSize(
                      50,
                    ),
                    width: getHorizontalSize(
                      200,
                    ),
                    text: "lbl_send_message".tr,
                    margin: getMargin(
                      top: 30,
                    ),
                    alignment: Alignment.center,
                  ),
                  CustomButton(
                    height: getVerticalSize(
                      60,
                    ),
                    text: "msg_2464_royal_ln_mesa".tr,
                    margin: getMargin(
                      top: 24,
                    ),
                    variant: ButtonVariant.FillGray10003,
                    shape: ButtonShape.RoundedBorder10,
                    padding: ButtonPadding.PaddingT21,
                    fontStyle: ButtonFontStyle.MontserratSemiBold14,
                    prefixWidget: Container(
                      margin: getMargin(
                        right: 16,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgLocationGreen500,
                      ),
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 24,
                    ),
                    padding: getPadding(
                      left: 38,
                      top: 13,
                      right: 38,
                      bottom: 13,
                    ),
                    decoration: AppDecoration.fillGray10003.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgCall,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                          margin: getMargin(
                            top: 4,
                            bottom: 4,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 16,
                            top: 9,
                            bottom: 6,
                          ),
                          child: Text(
                            "msg_1_773_600_4875".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratSemiBold14Green500,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 8,
                            top: 15,
                          ),
                          child: Text(
                            "lbl2".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratSemiBold14Green500,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 8,
                            top: 9,
                            bottom: 6,
                          ),
                          child: Text(
                            "msg_1_773_600_4866".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratSemiBold14Green500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomTextFormField(
                    focusNode: FocusNode(),
                    controller: controller.emailoneController,
                    hintText: "msg_sggrocery_gmail_com".tr,
                    margin: getMargin(
                      top: 24,
                      bottom: 97,
                    ),
                    variant: TextFormFieldVariant.FillGray10003,
                    padding: TextFormFieldPadding.PaddingT21_1,
                    fontStyle: TextFormFieldFontStyle.MontserratSemiBold14,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.emailAddress,
                    prefix: Container(
                      margin: getMargin(
                        left: 30,
                        top: 18,
                        right: 16,
                        bottom: 18,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgMail,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        60,
                      ),
                    ),
                    validator: (value) {
                      if (value == null ||
                          (!isValidEmail(value, isRequired: true))) {
                        return "Please enter valid email";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Car:
        return AppRoutes.homeScreenPage;
      case BottomBarEnum.Volume:
        return "/";
      case BottomBarEnum.Clock:
        return "/";
      case BottomBarEnum.Clockwhitea700:
        return "/";
      case BottomBarEnum.Userwhitea700:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreenPage:
        return HomeScreenPage();
      default:
        return DefaultWidget();
    }
  }
}
