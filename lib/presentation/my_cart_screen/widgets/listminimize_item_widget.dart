import '../controller/my_cart_controller.dart';
import '../models/listminimize_item_model.dart';
import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore: must_be_immutable
class ListminimizeItemWidget extends StatelessWidget {
  ListminimizeItemWidget(this.listminimizeItemModelObj);

  ListminimizeItemModel listminimizeItemModelObj;

  var controller = Get.find<MyCartController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        396,
      ),
      padding: getPadding(
        left: 13,
        top: 10,
        right: 13,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup185,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgMinimize,
            height: getVerticalSize(
              85,
            ),
            width: getHorizontalSize(
              11,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 19,
              top: 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    listminimizeItemModelObj.typeTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratBold14WhiteA700,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 2,
                  ),
                  child: Obx(
                    () => Text(
                      listminimizeItemModelObj.offerTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratBold20,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 3,
                  ),
                  child: Obx(
                    () => Text(
                      listminimizeItemModelObj.descriptionTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratRegular12WhiteA700,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 4,
                  ),
                  child: Obx(
                    () => Text(
                      listminimizeItemModelObj.usecouponcodeTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratRegular12WhiteA700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            svgPath: ImageConstant.imgMinimize,
            height: getVerticalSize(
              85,
            ),
            width: getHorizontalSize(
              11,
            ),
            margin: getMargin(
              left: 26,
            ),
          ),
          Container(
            height: getVerticalSize(
              85,
            ),
            width: getHorizontalSize(
              84,
            ),
            margin: getMargin(
              left: 27,
            ),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgMinimize,
                  height: getVerticalSize(
                    85,
                  ),
                  width: getHorizontalSize(
                    11,
                  ),
                  alignment: Alignment.centerLeft,
                  margin: getMargin(
                    left: 3,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgMinimize,
                  height: getVerticalSize(
                    85,
                  ),
                  width: getHorizontalSize(
                    11,
                  ),
                  alignment: Alignment.centerRight,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_code".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratRegular14WhiteA700,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 2,
                        ),
                        child: Obx(
                          () => Text(
                            listminimizeItemModelObj.couponcodeTxt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratBold16WhiteA700,
                          ),
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
    );
  }
}
