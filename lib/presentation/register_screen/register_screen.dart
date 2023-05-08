import 'controller/register_controller.dart';
import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:abdurrahmanilyas6_s_application1/core/utils/validation_functions.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_button.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:abdurrahmanilyas6_s_application1/domain/googleauth/google_auth_helper.dart';
import 'package:abdurrahmanilyas6_s_application1/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends GetWidget<RegisterController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: SingleChildScrollView(
                                  padding: getPadding(top: 16),
                                  child: Padding(
                                      padding: getPadding(
                                          left: 15, right: 16, bottom: 47),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgGroup400,
                                                          height:
                                                              getVerticalSize(
                                                                  53),
                                                          width:
                                                              getHorizontalSize(
                                                                  36)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 11,
                                                              top: 13,
                                                              bottom: 3),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text: "lbl_sg"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .black900,
                                                                            fontSize: getFontSize(
                                                                                28.78927230834961),
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontWeight:
                                                                                FontWeight.w400)),
                                                                    TextSpan(
                                                                        text:
                                                                            " ",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .lime500,
                                                                            fontSize: getFontSize(
                                                                                28.78927230834961),
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontWeight:
                                                                                FontWeight.w300)),
                                                                    TextSpan(
                                                                        text: "lbl_grocery"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .green500,
                                                                            fontSize: getFontSize(
                                                                                28.78927230834961),
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontWeight:
                                                                                FontWeight.w600))
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left))
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 41),
                                                child: Text("lbl_register".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratSemiBold24)),
                                            Padding(
                                                padding: getPadding(top: 27),
                                                child: Text("lbl_your_name".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratMedium18)),
                                            CustomTextFormField(
                                                focusNode: FocusNode(),
                                                controller:
                                                    controller.nameController,
                                                hintText:
                                                    "lbl_enter_your_name".tr,
                                                margin: getMargin(top: 13),
                                                variant: TextFormFieldVariant
                                                    .OutlineGray500,
                                                padding: TextFormFieldPadding
                                                    .PaddingT17,
                                                fontStyle:
                                                    TextFormFieldFontStyle
                                                        .MontserratRegular16,
                                                validator: (value) {
                                                  if (!isText(value)) {
                                                    return "Please enter valid text";
                                                  }
                                                  return null;
                                                }),
                                            Padding(
                                                padding: getPadding(top: 23),
                                                child: Text("lbl_email_id".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratMedium18)),
                                            CustomTextFormField(
                                                focusNode: FocusNode(),
                                                controller:
                                                    controller.emailController,
                                                hintText:
                                                    "msg_enter_your_email".tr,
                                                margin: getMargin(top: 13),
                                                variant: TextFormFieldVariant
                                                    .OutlineGray500,
                                                padding: TextFormFieldPadding
                                                    .PaddingT17,
                                                fontStyle:
                                                    TextFormFieldFontStyle
                                                        .MontserratRegular16,
                                                textInputType:
                                                    TextInputType.emailAddress,
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isValidEmail(value,
                                                          isRequired: true))) {
                                                    return "Please enter valid email";
                                                  }
                                                  return null;
                                                }),
                                            Padding(
                                                padding: getPadding(top: 23),
                                                child: Text("lbl_password".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratMedium18)),
                                            CustomTextFormField(
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .passwordoneController,
                                                hintText:
                                                    "msg_enter_your_password"
                                                        .tr,
                                                margin: getMargin(top: 13),
                                                variant: TextFormFieldVariant
                                                    .OutlineGray500,
                                                padding: TextFormFieldPadding
                                                    .PaddingT17,
                                                fontStyle:
                                                    TextFormFieldFontStyle
                                                        .MontserratRegular16,
                                                textInputType: TextInputType
                                                    .visiblePassword,
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isValidPassword(value,
                                                          isRequired: true))) {
                                                    return "Please enter valid password";
                                                  }
                                                  return null;
                                                },
                                                isObscureText: true),
                                            Padding(
                                                padding: getPadding(top: 23),
                                                child: Text(
                                                    "msg_confirm_password".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratMedium18)),
                                            CustomTextFormField(
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .passwordtwoController,
                                                hintText:
                                                    "msg_confirm_your_password"
                                                        .tr,
                                                margin: getMargin(top: 13),
                                                variant: TextFormFieldVariant
                                                    .OutlineGray500,
                                                padding: TextFormFieldPadding
                                                    .PaddingT17_1,
                                                fontStyle:
                                                    TextFormFieldFontStyle
                                                        .MontserratRegular16,
                                                textInputType: TextInputType
                                                    .visiblePassword,
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isValidPassword(value,
                                                          isRequired: true))) {
                                                    return "Please enter valid password";
                                                  }
                                                  return null;
                                                },
                                                isObscureText: true),
                                            Padding(
                                                padding: getPadding(top: 23),
                                                child: Text(
                                                    "lbl_contact_number".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratMedium18)),
                                            CustomTextFormField(
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .entercontactnumController,
                                                hintText:
                                                    "msg_enter_your_contact".tr,
                                                margin: getMargin(top: 13),
                                                variant: TextFormFieldVariant
                                                    .OutlineGray500,
                                                padding: TextFormFieldPadding
                                                    .PaddingT17,
                                                fontStyle:
                                                    TextFormFieldFontStyle
                                                        .MontserratRegular16,
                                                textInputAction:
                                                    TextInputAction.done,
                                                textInputType:
                                                    TextInputType.number,
                                                validator: (value) {
                                                  if (!isNumeric(value)) {
                                                    return "Please enter valid number";
                                                  }
                                                  return null;
                                                }),
                                            CustomButton(
                                                height: getVerticalSize(50),
                                                text: "lbl_register".tr,
                                                margin: getMargin(top: 24),
                                                variant: ButtonVariant
                                                    .OutlineIndigoA20033,
                                                shape: ButtonShape
                                                    .RoundedBorder10),
                                            Padding(
                                                padding: getPadding(top: 24),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 11,
                                                              bottom: 7),
                                                          child: SizedBox(
                                                              width:
                                                                  getHorizontalSize(
                                                                      122),
                                                              child: Divider(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1),
                                                                  thickness:
                                                                      getVerticalSize(
                                                                          1),
                                                                  color: ColorConstant
                                                                      .blueGray400))),
                                                      Text(
                                                          "msg_or_continue_with"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratRegular16),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 11,
                                                              bottom: 7),
                                                          child: SizedBox(
                                                              width:
                                                                  getHorizontalSize(
                                                                      122),
                                                              child: Divider(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1),
                                                                  thickness:
                                                                      getVerticalSize(
                                                                          1),
                                                                  color: ColorConstant
                                                                      .blueGray400)))
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 23),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapRowicon();
                                                          },
                                                          child: Container(
                                                              padding:
                                                                  getPadding(
                                                                      left: 38,
                                                                      top: 9,
                                                                      right: 38,
                                                                      bottom:
                                                                          9),
                                                              decoration: AppDecoration
                                                                  .outlineGreen500
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder10),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgIcon,
                                                                        height: getSize(
                                                                            32),
                                                                        width: getSize(
                                                                            32)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                8,
                                                                            top:
                                                                                6,
                                                                            bottom:
                                                                                3),
                                                                        child: Text(
                                                                            "lbl_google"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMontserratMedium18Gray700))
                                                                  ]))),
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapRowiconone();
                                                          },
                                                          child: Container(
                                                              padding:
                                                                  getPadding(
                                                                      left: 28,
                                                                      top: 9,
                                                                      right: 28,
                                                                      bottom:
                                                                          9),
                                                              decoration: AppDecoration
                                                                  .outlineGreen500
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder10),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgIconIndigo500,
                                                                        height: getVerticalSize(
                                                                            32),
                                                                        width: getHorizontalSize(
                                                                            33)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                8,
                                                                            top:
                                                                                4,
                                                                            bottom:
                                                                                5),
                                                                        child: Text(
                                                                            "lbl_facebook"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMontserratMedium18Gray700))
                                                                  ])))
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    left: 47, top: 31),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text:
                                                              "msg_already_have_an2"
                                                                  .tr,
                                                          style: TextStyle(
                                                              color: ColorConstant
                                                                  .blueGray400,
                                                              fontSize:
                                                                  getFontSize(
                                                                      16),
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                      TextSpan(
                                                          text: "lbl_login2".tr,
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .gray90001,
                                                              fontSize:
                                                                  getFontSize(
                                                                      16),
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700))
                                                    ]),
                                                    textAlign: TextAlign.left))
                                          ]))))
                        ])))));
  }

  onTapRowicon() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapRowiconone() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
