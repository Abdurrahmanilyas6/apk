import 'controller/privacy_policy_controller.dart';
import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:abdurrahmanilyas6_s_application1/presentation/home_screen_page/home_screen_page.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PrivacyPolicyScreen extends GetWidget<PrivacyPolicyController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            text: "lbl_privacy_policy2".tr,
            margin: getMargin(
              left: 16,
            ),
          ),
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 8,
            ),
            child: Container(
              padding: getPadding(
                left: 15,
                top: 29,
                right: 15,
                bottom: 29,
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
                    "lbl_privacy_policy2".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratSemiBold22Black90001.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        top: 19,
                      ),
                      child: Text(
                        "msg_last_updated_on".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratRegular16Gray600,
                      ),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      1991,
                    ),
                    width: getHorizontalSize(
                      396,
                    ),
                    margin: getMargin(
                      top: 30,
                      bottom: 196,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: getPadding(
                              top: 497,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_information_collected2".tr,
                                    style: TextStyle(
                                      color: ColorConstant.black90001,
                                      fontSize: getFontSize(
                                        18,
                                      ),
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "  ".tr,
                                    style: TextStyle(
                                      color: ColorConstant.black90001,
                                      fontSize: getFontSize(
                                        18,
                                      ),
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: getHorizontalSize(
                                  393,
                                ),
                                child: Text(
                                  "msg_sg_grocery_is_committed".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtMontserratRegular14Black90001,
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  396,
                                ),
                                margin: getMargin(
                                  top: 62,
                                ),
                                child: Text(
                                  "msg_sg_grocery_collects".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtMontserratRegular14Black90001,
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  306,
                                ),
                                margin: getMargin(
                                  top: 17,
                                  right: 89,
                                ),
                                child: Text(
                                  "msg_use_of_your_information".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtMontserratSemiBold18Black90001
                                      .copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  393,
                                ),
                                margin: getMargin(
                                  top: 22,
                                ),
                                child: Text(
                                  "msg_we_will_use_your".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtMontserratRegular14Black90001,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 29,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "msg_legal_disclaimer2".tr,
                                        style: TextStyle(
                                          color: ColorConstant.black90001,
                                          fontSize: getFontSize(
                                            18,
                                          ),
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w600,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " ",
                                        style: TextStyle(
                                          color: ColorConstant.black90001,
                                          fontSize: getFontSize(
                                            18,
                                          ),
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  391,
                                ),
                                margin: getMargin(
                                  top: 24,
                                  right: 4,
                                ),
                                child: Text(
                                  "msg_we_reserve_the_right".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtMontserratRegular14Black90001,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 22,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "msg_changes_in_this2".tr,
                                        style: TextStyle(
                                          color: ColorConstant.black90001,
                                          fontSize: getFontSize(
                                            18,
                                          ),
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w600,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " ",
                                        style: TextStyle(
                                          color: ColorConstant.black90001,
                                          fontSize: getFontSize(
                                            18,
                                          ),
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  396,
                                ),
                                margin: getMargin(
                                  top: 15,
                                ),
                                child: Text(
                                  "msg_sg_grocery_reserve".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtMontserratRegular14Black90001,
                                ),
                              ),
                            ],
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
