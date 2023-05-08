import '../controller/my_subscription_controller.dart';
import '../models/my_subscription_item_model.dart';
import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MySubscriptionItemWidget extends StatelessWidget {
  MySubscriptionItemWidget(this.mySubscriptionItemModelObj);

  MySubscriptionItemModel mySubscriptionItemModelObj;

  var controller = Get.find<MySubscriptionController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        119,
      ),
      width: getHorizontalSize(
        400,
      ),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgCardWhiteA700,
            height: getVerticalSize(
              119,
            ),
            width: getHorizontalSize(
              396,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: getVerticalSize(
                105,
              ),
              width: getHorizontalSize(
                377,
              ),
              margin: getMargin(
                bottom: 1,
              ),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: getVerticalSize(
                        43,
                      ),
                      width: getHorizontalSize(
                        159,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgCardGreen500,
                            height: getVerticalSize(
                              43,
                            ),
                            width: getHorizontalSize(
                              159,
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: getPadding(
                                bottom: 8,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_m".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratBold14WhiteA700,
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgRound,
                                        height: getSize(
                                          3,
                                        ),
                                        width: getSize(
                                          3,
                                        ),
                                        margin: getMargin(
                                          left: 5,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 8,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_t".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratBold14WhiteA700,
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgRound,
                                          height: getSize(
                                            3,
                                          ),
                                          width: getSize(
                                            3,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 8,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_w".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratBold14WhiteA700,
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgRound,
                                          height: getSize(
                                            3,
                                          ),
                                          width: getSize(
                                            3,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 8,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_t".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratBold14WhiteA700,
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgRound,
                                          height: getSize(
                                            3,
                                          ),
                                          width: getSize(
                                            3,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 8,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_f".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratBold14WhiteA700,
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgRound,
                                          height: getSize(
                                            3,
                                          ),
                                          width: getSize(
                                            3,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 8,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_s".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratBold14WhiteA700,
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgRound,
                                          height: getSize(
                                            3,
                                          ),
                                          width: getSize(
                                            3,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 8,
                                      bottom: 3,
                                    ),
                                    child: Text(
                                      "lbl_s".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtMontserratBold14WhiteA700,
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
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: getPadding(
                        right: 18,
                        bottom: 15,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: getMargin(
                              top: 1,
                            ),
                            color: ColorConstant.gray50,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Container(
                              height: getSize(
                                89,
                              ),
                              width: getSize(
                                89,
                              ),
                              padding: getPadding(
                                left: 12,
                                top: 13,
                                right: 12,
                                bottom: 13,
                              ),
                              decoration: AppDecoration.fillGray50.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Stack(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage63x65,
                                    height: getVerticalSize(
                                      63,
                                    ),
                                    width: getHorizontalSize(
                                      65,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 22,
                              top: 1,
                              bottom: 14,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_amul_gold_milk".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtMontserratSemiBold16Gray700c6,
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 7,
                                  ),
                                  child: Text(
                                    "lbl_500_ml".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtMontserratRegular14Gray50002,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 7,
                                  ),
                                  child: Text(
                                    "lbl_2".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtHelveticaBold18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: getPadding(
                              bottom: 72,
                            ),
                            child: Obx(
                              () => Text(
                                mySubscriptionItemModelObj.qtytwoTxt.value,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtMontserratSemiBold14Gray50002,
                              ),
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
        ],
      ),
    );
  }
}
