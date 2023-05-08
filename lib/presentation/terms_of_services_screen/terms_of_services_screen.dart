import 'controller/terms_of_services_controller.dart';
import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:abdurrahmanilyas6_s_application1/presentation/home_screen_page/home_screen_page.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TermsOfServicesScreen extends GetWidget<TermsOfServicesController> {
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
            text: "msg_terms_of_services".tr,
            margin: getMargin(
              left: 16,
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
                left: 15,
                top: 27,
                right: 15,
                bottom: 27,
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
                    "msg_terms_and_conditions".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratSemiBold22Black90001.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      393,
                    ),
                    margin: getMargin(
                      top: 30,
                    ),
                    child: Text(
                      "msg_welcome_to_all_sg".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style:
                          AppStyle.txtMontserratSemiBold16Black90001.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      396,
                    ),
                    margin: getMargin(
                      top: 38,
                    ),
                    child: Text(
                      "msg_by_placing_an_order".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratRegular14Black90001,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 28,
                    ),
                    child: Text(
                      "msg_our_delivery_service".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style:
                          AppStyle.txtMontserratSemiBold18Black90001.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      393,
                    ),
                    margin: getMargin(
                      top: 28,
                    ),
                    child: Text(
                      "msg_when_you_place_an".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratRegular14Black90001,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Text(
                      "msg_price_and_availability".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style:
                          AppStyle.txtMontserratSemiBold18Black90001.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      393,
                    ),
                    margin: getMargin(
                      top: 25,
                    ),
                    child: Text(
                      "msg_from_time_to_time".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratRegular14Black90001,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 2,
                      top: 33,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_payment3".tr,
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
                            text: "\r".tr,
                            style: TextStyle(
                              color: ColorConstant.black90001,
                              fontSize: getFontSize(
                                22,
                              ),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
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
                      top: 30,
                      bottom: 193,
                    ),
                    child: Text(
                      "msg_we_accept_only_credit_debit".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratRegular14Black90001,
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
