import '../controller/my_addresses_controller.dart';
import '../models/my_addresses_item_model.dart';
import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyAddressesItemWidget extends StatelessWidget {
  MyAddressesItemWidget(this.myAddressesItemModelObj);

  MyAddressesItemModel myAddressesItemModelObj;

  var controller = Get.find<MyAddressesController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          svgPath: ImageConstant.imgRefresh,
          height: getSize(
            18,
          ),
          width: getSize(
            18,
          ),
          margin: getMargin(
            top: 50,
            bottom: 106,
          ),
        ),
        Container(
          margin: getMargin(
            left: 16,
          ),
          padding: getPadding(
            left: 24,
            top: 23,
            right: 24,
            bottom: 23,
          ),
          decoration: AppDecoration.outlineBlack9000f.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  bottom: 37,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgIconBlack90001,
                          height: getVerticalSize(
                            20,
                          ),
                          width: getHorizontalSize(
                            19,
                          ),
                          margin: getMargin(
                            bottom: 1,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 7,
                          ),
                          child: Obx(
                            () => Text(
                              myAddressesItemModelObj.addressnameTxt.value,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratSemiBold18Black90001,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: getHorizontalSize(
                          201,
                        ),
                        margin: getMargin(
                          top: 20,
                        ),
                        child: Obx(
                          () => Text(
                            myAddressesItemModelObj.k4517washingtonTxt.value,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratRegular14Black90001,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgFrame,
                height: getVerticalSize(
                  18,
                ),
                width: getHorizontalSize(
                  52,
                ),
                margin: getMargin(
                  left: 33,
                  bottom: 108,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
