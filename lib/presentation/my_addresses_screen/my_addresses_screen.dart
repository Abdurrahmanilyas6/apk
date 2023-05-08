import '../my_addresses_screen/widgets/my_addresses_item_widget.dart';
import 'controller/my_addresses_controller.dart';
import 'models/my_addresses_item_model.dart';
import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:abdurrahmanilyas6_s_application1/presentation/home_screen_page/home_screen_page.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MyAddressesScreen extends GetWidget<MyAddressesController> {
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
              top: 13,
              bottom: 16,
            ),
          ),
          title: AppbarTitle(
            text: "lbl_my_addresses".tr,
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
              top: 8,
            ),
            padding: getPadding(
              left: 16,
              top: 23,
              right: 16,
              bottom: 23,
            ),
            decoration: AppDecoration.fillWhiteA700.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL30,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgIconGreen500,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        top: 2,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 7,
                      ),
                      child: Text(
                        "lbl_add_new_address".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratSemiBold22,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Obx(
                      () => ListView.separated(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(
                              24,
                            ),
                          );
                        },
                        itemCount: controller.myAddressesModelObj.value
                            .myAddressesItemList.value.length,
                        itemBuilder: (context, index) {
                          MyAddressesItemModel model = controller
                              .myAddressesModelObj
                              .value
                              .myAddressesItemList
                              .value[index];
                          return MyAddressesItemWidget(
                            model,
                          );
                        },
                      ),
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
