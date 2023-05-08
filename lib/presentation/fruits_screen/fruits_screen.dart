import '../fruits_screen/widgets/fruits_item_widget.dart';
import 'controller/fruits_controller.dart';
import 'models/fruits_item_model.dart';
import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:abdurrahmanilyas6_s_application1/presentation/home_screen_page/home_screen_page.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FruitsScreen extends GetWidget<FruitsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.green500,
        appBar: CustomAppBar(
          height: getVerticalSize(
            59,
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
            text: "lbl_fruits".tr,
            margin: getMargin(
              left: 16,
            ),
          ),
        ),
        body: Container(
          width: double.maxFinite,
          child: Container(
            width: double.maxFinite,
            margin: getMargin(
              top: 10,
            ),
            padding: getPadding(
              left: 16,
              top: 24,
              right: 16,
              bottom: 24,
            ),
            decoration: AppDecoration.fillWhiteA700.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL30,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Obx(
                    () => GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(
                          237,
                        ),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(
                          16,
                        ),
                        crossAxisSpacing: getHorizontalSize(
                          16,
                        ),
                      ),
                      physics: BouncingScrollPhysics(),
                      itemCount: controller
                          .fruitsModelObj.value.fruitsItemList.value.length,
                      itemBuilder: (context, index) {
                        FruitsItemModel model = controller
                            .fruitsModelObj.value.fruitsItemList.value[index];
                        return FruitsItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
              ],
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
