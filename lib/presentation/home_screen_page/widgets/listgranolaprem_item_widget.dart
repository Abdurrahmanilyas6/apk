import '../controller/home_screen_controller.dart';
import '../models/listgranolaprem_item_model.dart';
import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListgranolapremItemWidget extends StatelessWidget {
  ListgranolapremItemWidget(this.listgranolapremItemModelObj);

  ListgranolapremItemModel listgranolapremItemModelObj;

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
            left: 8,
            top: 14,
            right: 8,
            bottom: 14,
          ),
          decoration: AppDecoration.fillDeeporange50.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage84x126,
                height: getVerticalSize(
                  84,
                ),
                width: getHorizontalSize(
                  126,
                ),
                alignment: Alignment.center,
              ),
              Container(
                width: getHorizontalSize(
                  128,
                ),
                margin: getMargin(
                  left: 1,
                  top: 10,
                ),
                child: Obx(
                  () => Text(
                    listgranolapremItemModelObj.granolapremiumTxt.value,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratMedium14,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 10,
                  bottom: 2,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: getPadding(
                        bottom: 1,
                      ),
                      child: Obx(
                        () => Text(
                          listgranolapremItemModelObj.priceTxt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratBold14,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 57,
                        top: 1,
                      ),
                      child: Text(
                        "lbl_1_kg".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratSemiBold14Gray800,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
