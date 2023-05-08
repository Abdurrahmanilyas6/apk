import '../details_screen/widgets/listairplane_item_widget.dart';
import 'controller/details_controller.dart';
import 'models/listairplane_item_model.dart';
import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DetailsScreen extends GetWidget<DetailsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  262,
                ),
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: getVerticalSize(
                          185,
                        ),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: ColorConstant.green500,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(
                              getHorizontalSize(
                                30,
                              ),
                            ),
                            bottomRight: Radius.circular(
                              getHorizontalSize(
                                30,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage219x240,
                      height: getVerticalSize(
                        219,
                      ),
                      width: getHorizontalSize(
                        240,
                      ),
                      alignment: Alignment.bottomCenter,
                    ),
                    CustomAppBar(
                      height: getVerticalSize(
                        47,
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
                          top: 1,
                        ),
                      ),
                      title: AppbarTitle(
                        text: "lbl_details".tr,
                        margin: getMargin(
                          left: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: getPadding(
                    top: 24,
                  ),
                  child: Padding(
                    padding: getPadding(
                      left: 16,
                      right: 15,
                      bottom: 5,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgSwipeGreen400,
                          height: getVerticalSize(
                            5,
                          ),
                          width: getHorizontalSize(
                            33,
                          ),
                          alignment: Alignment.center,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 25,
                            right: 1,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_green_apple".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratBold28,
                              ),
                              Spacer(),
                              CustomImageView(
                                svgPath: ImageConstant.imgVolumeGreen500,
                                height: getSize(
                                  30,
                                ),
                                width: getSize(
                                  30,
                                ),
                                margin: getMargin(
                                  bottom: 4,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 15,
                                  bottom: 5,
                                ),
                                child: Text(
                                  "lbl_12".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratSemiBold24,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgPlusGreen500,
                                height: getSize(
                                  30,
                                ),
                                width: getSize(
                                  30,
                                ),
                                margin: getMargin(
                                  left: 16,
                                  bottom: 4,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 14,
                          ),
                          child: Text(
                            "lbl_special_price".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratRegular22,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 14,
                            right: 1,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_2".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtHelveticaBold34,
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 11,
                                  bottom: 1,
                                ),
                                child: Text(
                                  "lbl_42_off".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratSemiBold22,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 24,
                          ),
                          child: Text(
                            "lbl_description".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratBold22,
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            376,
                          ),
                          margin: getMargin(
                            top: 10,
                            right: 20,
                          ),
                          child: Text(
                            "msg_green_apples_have".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratRegular16Gray50002,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              top: 30,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomButton(
                                  height: getVerticalSize(
                                    36,
                                  ),
                                  width: getHorizontalSize(
                                    106,
                                  ),
                                  text: "lbl_subscribe".tr,
                                  padding: ButtonPadding.PaddingAll6,
                                  fontStyle:
                                      ButtonFontStyle.MontserratSemiBold16,
                                ),
                                CustomButton(
                                  height: getVerticalSize(
                                    36,
                                  ),
                                  width: getHorizontalSize(
                                    106,
                                  ),
                                  text: "lbl_buy_once".tr,
                                  margin: getMargin(
                                    left: 21,
                                  ),
                                  variant: ButtonVariant.OutlineGreen500,
                                  padding: ButtonPadding.PaddingAll6,
                                  fontStyle: ButtonFontStyle
                                      .MontserratSemiBold16Green500,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 22,
                          ),
                          child: Text(
                            "lbl_related_items".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratBold22,
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            187,
                          ),
                          child: Obx(
                            () => ListView.separated(
                              padding: getPadding(
                                top: 25,
                              ),
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: getVerticalSize(
                                    16,
                                  ),
                                );
                              },
                              itemCount: controller.detailsModelObj.value
                                  .listairplaneItemList.value.length,
                              itemBuilder: (context, index) {
                                ListairplaneItemModel model = controller
                                    .detailsModelObj
                                    .value
                                    .listairplaneItemList
                                    .value[index];
                                return ListairplaneItemWidget(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
