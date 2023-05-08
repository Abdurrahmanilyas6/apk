import 'controller/about_us_controller.dart';
import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:abdurrahmanilyas6_s_application1/presentation/home_screen_page/home_screen_page.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_bottom_bar.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_checkbox.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AboutUsScreen extends GetWidget<AboutUsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            text: "lbl_about".tr,
            margin: getMargin(
              left: 15,
            ),
          ),
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 10,
            ),
            child: Container(
              padding: getPadding(
                top: 29,
                bottom: 29,
              ),
              decoration: AppDecoration.fillWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL30,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage177x396,
                    height: getVerticalSize(
                      177,
                    ),
                    width: getHorizontalSize(
                      396,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      385,
                    ),
                    margin: getMargin(
                      left: 16,
                      top: 21,
                      right: 26,
                    ),
                    child: Text(
                      "msg_what_began_little".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratRegular14Gray70003,
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      619,
                    ),
                    width: double.maxFinite,
                    margin: getMargin(
                      top: 24,
                      bottom: 98,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: getVerticalSize(
                              496,
                            ),
                            width: double.maxFinite,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: getVerticalSize(
                                      453,
                                    ),
                                    width: double.maxFinite,
                                    decoration: BoxDecoration(
                                      color: ColorConstant.red50,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 16,
                                      right: 16,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgImage172x198,
                                          height: getVerticalSize(
                                            172,
                                          ),
                                          width: getHorizontalSize(
                                            198,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 1,
                                          ),
                                          child: Text(
                                            "msg_why_choose_us".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratSemiBold22,
                                          ),
                                        ),
                                        Container(
                                          width: getHorizontalSize(
                                            274,
                                          ),
                                          margin: getMargin(
                                            top: 13,
                                          ),
                                          child: Text(
                                            "msg_we_do_not_buy_from".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle
                                                .txtMontserratSemiBold18Gray80001,
                                          ),
                                        ),
                                        Container(
                                          width: getHorizontalSize(
                                            389,
                                          ),
                                          margin: getMargin(
                                            top: 22,
                                            right: 6,
                                          ),
                                          child: Text(
                                            "msg_we_would_like_to".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRegular14Gray60005,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: getPadding(
                                              top: 18,
                                              right: 25,
                                            ),
                                            child: Row(
                                              children: [
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgIconGreen50024x24,
                                                  height: getSize(
                                                    24,
                                                  ),
                                                  width: getSize(
                                                    24,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 8,
                                                    top: 5,
                                                    bottom: 1,
                                                  ),
                                                  child: Text(
                                                    "msg_100_organic_food".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratSemiBold14Gray80001,
                                                  ),
                                                ),
                                                Spacer(),
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgIcon24x24,
                                                  height: getSize(
                                                    24,
                                                  ),
                                                  width: getSize(
                                                    24,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 8,
                                                    top: 5,
                                                    bottom: 1,
                                                  ),
                                                  child: Text(
                                                    "lbl_fast_delivery".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratSemiBold14Gray80001,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 12,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              CustomImageView(
                                                svgPath: ImageConstant.imgIcon1,
                                                height: getSize(
                                                  24,
                                                ),
                                                width: getSize(
                                                  24,
                                                ),
                                                margin: getMargin(
                                                  top: 4,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 8,
                                                  top: 7,
                                                  bottom: 2,
                                                ),
                                                child: Text(
                                                  "lbl_24_7_service".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratSemiBold14Gray80001,
                                                ),
                                              ),
                                              Spacer(),
                                              Obx(
                                                () => CustomCheckbox(
                                                  text: "lbl_secure_payment".tr,
                                                  value: controller
                                                      .isCheckbox.value,
                                                  margin: getMargin(
                                                    bottom: 4,
                                                  ),
                                                  fontStyle: CheckboxFontStyle
                                                      .MontserratSemiBold14,
                                                  onChange: (value) {
                                                    controller.isCheckbox
                                                        .value = value;
                                                  },
                                                ),
                                              ),
                                            ],
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
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: getPadding(
                              left: 16,
                              right: 16,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: getPadding(
                                    left: 18,
                                    top: 16,
                                    right: 18,
                                    bottom: 16,
                                  ),
                                  decoration:
                                      AppDecoration.fillGray10003.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 4,
                                        ),
                                        child: Text(
                                          "lbl_privacy_policy2".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratRegular16Gray60006,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getVerticalSize(
                                          23,
                                        ),
                                        width: getHorizontalSize(
                                          21,
                                        ),
                                        margin: getMargin(
                                          right: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    top: 16,
                                  ),
                                  padding: getPadding(
                                    left: 18,
                                    top: 17,
                                    right: 18,
                                    bottom: 17,
                                  ),
                                  decoration:
                                      AppDecoration.fillGray10003.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 2,
                                        ),
                                        child: Text(
                                          "msg_terms_and_services".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratRegular16Gray60006,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getVerticalSize(
                                          23,
                                        ),
                                        width: getHorizontalSize(
                                          21,
                                        ),
                                        margin: getMargin(
                                          right: 2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
