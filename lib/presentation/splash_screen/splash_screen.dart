import 'controller/splash_controller.dart';
import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 51, right: 51),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: getPadding(right: 11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgGroup400,
                                    height: getVerticalSize(78),
                                    width: getHorizontalSize(53)),
                                Padding(
                                    padding: getPadding(top: 20, bottom: 5),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "lbl_sg".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.black900,
                                                  fontSize: getFontSize(
                                                      42.36911392211914),
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(
                                              text: " ",
                                              style: TextStyle(
                                                  color: ColorConstant.lime500,
                                                  fontSize: getFontSize(
                                                      42.36911392211914),
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w300)),
                                          TextSpan(
                                              text: "lbl_grocery".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.green500,
                                                  fontSize: getFontSize(
                                                      42.36911392211914),
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w600))
                                        ]),
                                        textAlign: TextAlign.left))
                              ])),
                      Padding(
                          padding: getPadding(left: 8, top: 9, bottom: 5),
                          child: Text("msg_your_needs_in_just".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratRegular20.copyWith(
                                  letterSpacing: getHorizontalSize(1.1))))
                    ]))));
  }
}
