import '../controller/fruits_controller.dart';
import '../models/fruits_item_model.dart';
import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FruitsItemWidget extends StatelessWidget {
  FruitsItemWidget(this.fruitsItemModelObj);

  FruitsItemModel fruitsItemModelObj;

  var controller = Get.find<FruitsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 8,
        top: 12,
        right: 8,
        bottom: 12,
      ),
      decoration: AppDecoration.fillGray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgFavorite,
            height: getVerticalSize(
              26,
            ),
            width: getHorizontalSize(
              25,
            ),
            alignment: Alignment.centerRight,
            margin: getMargin(
              right: 1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage52x71,
            height: getVerticalSize(
              79,
            ),
            width: getHorizontalSize(
              107,
            ),
            alignment: Alignment.center,
          ),
          Padding(
            padding: getPadding(
              top: 10,
            ),
            child: Row(
              children: [
                Obx(
                  () => Text(
                    fruitsItemModelObj.typeTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratBold18,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 7,
                    top: 2,
                    bottom: 1,
                  ),
                  child: Text(
                    "lbl_1_kg2".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratSemiBold14Gray70002,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 7,
            ),
            child: Row(
              children: [
                Obx(
                  () => Text(
                    fruitsItemModelObj.priceTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratSemiBold18,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgVolumeGreen500,
                  height: getSize(
                    18,
                  ),
                  width: getSize(
                    18,
                  ),
                  margin: getMargin(
                    left: 94,
                    top: 2,
                    bottom: 1,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 7,
                  ),
                  child: Text(
                    "lbl_12".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratSemiBold18,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgPlusGreen500,
                  height: getSize(
                    18,
                  ),
                  width: getSize(
                    18,
                  ),
                  margin: getMargin(
                    left: 7,
                    top: 2,
                    bottom: 1,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 14,
              bottom: 3,
            ),
            child: Row(
              children: [
                Container(
                  width: getHorizontalSize(
                    82,
                  ),
                  padding: getPadding(
                    left: 10,
                    top: 5,
                    right: 10,
                    bottom: 5,
                  ),
                  decoration: AppDecoration.txtFillGreen500.copyWith(
                    borderRadius: BorderRadiusStyle.txtRoundedBorder3,
                  ),
                  child: Text(
                    "lbl_subscribe".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratSemiBold12,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    78,
                  ),
                  margin: getMargin(
                    left: 14,
                  ),
                  padding: getPadding(
                    left: 8,
                    top: 5,
                    right: 8,
                    bottom: 5,
                  ),
                  decoration: AppDecoration.txtOutlineGreen500.copyWith(
                    borderRadius: BorderRadiusStyle.txtRoundedBorder3,
                  ),
                  child: Text(
                    "lbl_buy_once".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratSemiBold12Green500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
