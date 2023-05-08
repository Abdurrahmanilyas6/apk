import '../controller/home_screen_controller.dart';
import '../models/listbackground_item_model.dart';
import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListbackgroundItemWidget extends StatelessWidget {
  ListbackgroundItemWidget(this.listbackgroundItemModelObj);

  ListbackgroundItemModel listbackgroundItemModelObj;

  var controller = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        height: getVerticalSize(
          125,
        ),
        width: getHorizontalSize(
          87,
        ),
        margin: getMargin(
          right: 20,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: getVerticalSize(
                  88,
                ),
                width: getHorizontalSize(
                  87,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.gray100,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      16,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage65x75,
                    height: getVerticalSize(
                      65,
                    ),
                    width: getHorizontalSize(
                      75,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      87,
                    ),
                    margin: getMargin(
                      top: 22,
                    ),
                    padding: getPadding(
                      left: 14,
                      top: 11,
                      right: 14,
                      bottom: 11,
                    ),
                    decoration: AppDecoration.txtFillGreen500.copyWith(
                      borderRadius: BorderRadiusStyle.txtCustomBorderBL5,
                    ),
                    child: Obx(
                      () => Text(
                        listbackgroundItemModelObj.nameTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratSemiBold12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
