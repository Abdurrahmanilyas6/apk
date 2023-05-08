import '../my_subscription_screen/widgets/my_subscription_item_widget.dart';
import 'controller/my_subscription_controller.dart';
import 'models/my_subscription_item_model.dart';
import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:abdurrahmanilyas6_s_application1/presentation/home_screen_page/home_screen_page.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_bottom_bar.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MySubscriptionScreen extends GetWidget<MySubscriptionController> {
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
            text: "lbl_my_subscription".tr,
            margin: getMargin(
              left: 16,
            ),
          ),
        ),
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomDropDown(
                focusNode: FocusNode(),
                icon: Container(
                  margin: getMargin(
                    left: 30,
                    right: 24,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.gray800,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgArrowdown,
                  ),
                ),
                hintText: "msg_subscription_weekly".tr,
                margin: getMargin(
                  left: 16,
                  top: 14,
                  right: 16,
                ),
                variant: DropDownVariant.FillWhiteA700,
                padding: DropDownPadding.PaddingT15,
                fontStyle: DropDownFontStyle.MontserratSemiBold16,
                items: controller
                    .mySubscriptionModelObj.value.dropdownItemList.value,
                onChanged: (value) {
                  controller.onSelected(value);
                },
              ),
              Container(
                width: double.maxFinite,
                child: Container(
                  margin: getMargin(
                    top: 24,
                  ),
                  padding: getPadding(
                    left: 12,
                    top: 24,
                    right: 12,
                    bottom: 24,
                  ),
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL30,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 4,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 2,
                                  bottom: 1,
                                ),
                                child: Text(
                                  "lbl_today".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratBold18Gray800,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 8,
                                  top: 2,
                                  bottom: 1,
                                ),
                                child: Text(
                                  "msg_23_september_2021".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRegular18,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgCalendar,
                                height: getVerticalSize(
                                  26,
                                ),
                                width: getHorizontalSize(
                                  23,
                                ),
                                margin: getMargin(
                                  left: 8,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: getPadding(
                            top: 25,
                            right: 4,
                          ),
                          child: Obx(
                            () => ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: getVerticalSize(
                                    15,
                                  ),
                                );
                              },
                              itemCount: controller.mySubscriptionModelObj.value
                                  .mySubscriptionItemList.value.length,
                              itemBuilder: (context, index) {
                                MySubscriptionItemModel model = controller
                                    .mySubscriptionModelObj
                                    .value
                                    .mySubscriptionItemList
                                    .value[index];
                                return MySubscriptionItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgIllustration,
                        height: getVerticalSize(
                          88,
                        ),
                        width: getHorizontalSize(
                          216,
                        ),
                        margin: getMargin(
                          top: 34,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                          bottom: 88,
                        ),
                        child: Text(
                          "msg_excited_to_serve".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratRegular15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
