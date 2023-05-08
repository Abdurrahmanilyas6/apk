import '../home_screen_page/widgets/listbackground_item_widget.dart';
import '../home_screen_page/widgets/listfortunerice_item_widget.dart';
import '../home_screen_page/widgets/listgranolaprem_item_widget.dart';
import '../home_screen_page/widgets/listsoftdrinks_item_widget.dart';
import 'controller/home_screen_controller.dart';
import 'models/home_screen_model.dart';
import 'models/listbackground_item_model.dart';
import 'models/listfortunerice_item_model.dart';
import 'models/listgranolaprem_item_model.dart';
import 'models/listsoftdrinks_item_model.dart';
import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class HomeScreenPage extends StatelessWidget {
  HomeScreenController controller =
      Get.put(HomeScreenController(HomeScreenModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: getHorizontalSize(
                  396,
                ),
                margin: getMargin(
                  left: 16,
                  top: 10,
                  right: 16,
                ),
                padding: getPadding(
                  top: 14,
                  bottom: 14,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                  image: DecorationImage(
                    image: fs.Svg(
                      ImageConstant.imgFrame2,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomAppBar(
                      height: getVerticalSize(
                        24,
                      ),
                      leadingWidth: 62,
                      leading: AppbarImage(
                        height: getSize(
                          23,
                        ),
                        width: getSize(
                          23,
                        ),
                        svgPath: ImageConstant.imgSearch,
                        margin: getMargin(
                          left: 39,
                        ),
                      ),
                      title: Padding(
                        padding: getPadding(
                          left: 14,
                        ),
                        child: Text(
                          "msg_search_products".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratRegular14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: getPadding(
                    top: 20,
                  ),
                  child: Padding(
                    padding: getPadding(
                      left: 16,
                      bottom: 5,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: getMargin(
                            right: 16,
                          ),
                          padding: getPadding(
                            left: 28,
                            top: 10,
                            right: 28,
                            bottom: 10,
                          ),
                          decoration: AppDecoration.fillGreen500.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 7,
                                  top: 25,
                                  bottom: 27,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: getHorizontalSize(
                                        99,
                                      ),
                                      child: Text(
                                        "msg_everyday_essentials".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratRegular20WhiteA700,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 7,
                                      ),
                                      child: Text(
                                        "lbl_10_off".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMontserratBold20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage,
                                height: getVerticalSize(
                                  126,
                                ),
                                width: getHorizontalSize(
                                  199,
                                ),
                                margin: getMargin(
                                  bottom: 8,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgSwipe,
                          height: getVerticalSize(
                            5,
                          ),
                          width: getHorizontalSize(
                            39,
                          ),
                          margin: getMargin(
                            left: 179,
                            top: 24,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 24,
                            right: 16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_top_categories".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratBold20Gray800,
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 2,
                                  bottom: 2,
                                ),
                                child: Text(
                                  "lbl_explore_all".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratSemiBold16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            143,
                          ),
                          child: Obx(
                            () => ListView.separated(
                              padding: getPadding(
                                top: 18,
                                right: 4,
                              ),
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: getVerticalSize(
                                    20,
                                  ),
                                );
                              },
                              itemCount: controller.homeScreenModelObj.value
                                  .listbackgroundItemList.value.length,
                              itemBuilder: (context, index) {
                                ListbackgroundItemModel model = controller
                                    .homeScreenModelObj
                                    .value
                                    .listbackgroundItemList
                                    .value[index];
                                return ListbackgroundItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 22,
                            right: 16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_top_products".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratBold20Gray800,
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 2,
                                  bottom: 2,
                                ),
                                child: Text(
                                  "lbl_explore_all".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratSemiBold16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: getVerticalSize(
                              208,
                            ),
                            child: Obx(
                              () => ListView.separated(
                                padding: getPadding(
                                  top: 16,
                                ),
                                scrollDirection: Axis.horizontal,
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    height: getVerticalSize(
                                      16,
                                    ),
                                  );
                                },
                                itemCount: controller.homeScreenModelObj.value
                                    .listfortunericeItemList.value.length,
                                itemBuilder: (context, index) {
                                  ListfortunericeItemModel model = controller
                                      .homeScreenModelObj
                                      .value
                                      .listfortunericeItemList
                                      .value[index];
                                  return ListfortunericeItemWidget(
                                    model,
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            191,
                          ),
                          width: getHorizontalSize(
                            396,
                          ),
                          margin: getMargin(
                            top: 21,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  padding: getPadding(
                                    left: 24,
                                    right: 24,
                                  ),
                                  decoration:
                                      AppDecoration.fillLightblue50.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: getVerticalSize(
                                          80,
                                        ),
                                        width: getHorizontalSize(
                                          161,
                                        ),
                                        margin: getMargin(
                                          top: 111,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.cyan50,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              80,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage130x158,
                                height: getVerticalSize(
                                  130,
                                ),
                                width: getHorizontalSize(
                                  158,
                                ),
                                alignment: Alignment.bottomRight,
                                margin: getMargin(
                                  bottom: 7,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: getPadding(
                                    left: 24,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "msg_get_25_cashback".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMontserratBold24,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 8,
                                        ),
                                        child: Text(
                                          "msg_on_all_baby_products".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratRegular14Teal40001,
                                        ),
                                      ),
                                      CustomButton(
                                        height: getVerticalSize(
                                          33,
                                        ),
                                        width: getHorizontalSize(
                                          129,
                                        ),
                                        text: "lbl_shop_now".tr,
                                        margin: getMargin(
                                          top: 46,
                                        ),
                                        padding: ButtonPadding.PaddingAll6,
                                        fontStyle: ButtonFontStyle
                                            .MontserratSemiBold16,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 23,
                            right: 16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "msg_deals_of_the_week".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratBold20Gray800,
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 4,
                                ),
                                child: Text(
                                  "lbl_explore_all".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratSemiBold16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: getVerticalSize(
                              185,
                            ),
                            child: Obx(
                              () => ListView.separated(
                                padding: getPadding(
                                  top: 20,
                                ),
                                scrollDirection: Axis.horizontal,
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    height: getVerticalSize(
                                      16,
                                    ),
                                  );
                                },
                                itemCount: controller.homeScreenModelObj.value
                                    .listsoftdrinksItemList.value.length,
                                itemBuilder: (context, index) {
                                  ListsoftdrinksItemModel model = controller
                                      .homeScreenModelObj
                                      .value
                                      .listsoftdrinksItemList
                                      .value[index];
                                  return ListsoftdrinksItemWidget(
                                    model,
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 18,
                            right: 16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_featured_items".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratBold20Gray800,
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 4,
                                ),
                                child: Text(
                                  "lbl_explore_all".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratSemiBold16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: getVerticalSize(
                              206,
                            ),
                            child: Obx(
                              () => ListView.separated(
                                padding: getPadding(
                                  top: 15,
                                ),
                                scrollDirection: Axis.horizontal,
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    height: getVerticalSize(
                                      16,
                                    ),
                                  );
                                },
                                itemCount: controller.homeScreenModelObj.value
                                    .listgranolapremItemList.value.length,
                                itemBuilder: (context, index) {
                                  ListgranolapremItemModel model = controller
                                      .homeScreenModelObj
                                      .value
                                      .listgranolapremItemList
                                      .value[index];
                                  return ListgranolapremItemWidget(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
