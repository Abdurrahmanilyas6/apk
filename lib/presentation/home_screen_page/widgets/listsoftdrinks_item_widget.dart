import '../controller/home_screen_controller.dart';
import '../models/listsoftdrinks_item_model.dart';
import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListsoftdrinksItemWidget extends StatelessWidget {
  ListsoftdrinksItemWidget(this.listsoftdrinksItemModelObj);

  ListsoftdrinksItemModel listsoftdrinksItemModelObj;

  var controller = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 16,
          ),
          padding: getPadding(
            left: 31,
            top: 13,
            right: 31,
            bottom: 13,
          ),
          decoration: AppDecoration.fillGray100.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage81x92,
                height: getVerticalSize(
                  81,
                ),
                width: getHorizontalSize(
                  92,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 10,
                ),
                child: Obx(
                  () => Text(
                    listsoftdrinksItemModelObj.softdrinksTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratSemiBold16Gray800,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    top: 11,
                  ),
                  child: Obx(
                    () => Text(
                      listsoftdrinksItemModelObj.offerTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratBold12,
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
