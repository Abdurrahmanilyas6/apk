import 'controller/faq_controller.dart';
import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:abdurrahmanilyas6_s_application1/presentation/home_screen_page/home_screen_page.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_bottom_bar.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_button.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_drop_down.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FaqScreen extends GetWidget<FaqController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.green500,
        appBar: CustomAppBar(
          height: getVerticalSize(
            62,
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
            text: "lbl_faq".tr,
            margin: getMargin(
              left: 16,
            ),
          ),
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 8,
            ),
            child: Container(
              padding: getPadding(
                left: 16,
                top: 24,
                right: 16,
                bottom: 24,
              ),
              decoration: AppDecoration.fillWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL30,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomDropDown(
                    focusNode: FocusNode(),
                    icon: Container(
                      margin: getMargin(
                        left: 30,
                        right: 26,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgArrowdownBlack90001,
                      ),
                    ),
                    hintText: "lbl_select_category".tr,
                    variant: DropDownVariant.FillGray10002,
                    fontStyle: DropDownFontStyle.MontserratRegular18,
                    items: controller.faqModelObj.value.dropdownItemList.value,
                    onChanged: (value) {
                      controller.onSelected(value);
                    },
                  ),
                  CustomDropDown(
                    focusNode: FocusNode(),
                    icon: Container(
                      margin: getMargin(
                        left: 30,
                        right: 26,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgArrowdownBlack90001,
                      ),
                    ),
                    hintText: "msg_where_do_you_deliver".tr,
                    margin: getMargin(
                      top: 24,
                    ),
                    items: controller.faqModelObj.value.dropdownItemList1.value,
                    onChanged: (value) {
                      controller.onSelected1(value);
                    },
                  ),
                  CustomDropDown(
                    focusNode: FocusNode(),
                    icon: Container(
                      margin: getMargin(
                        left: 30,
                        right: 26,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgArrowdownBlack90001,
                      ),
                    ),
                    hintText: "msg_how_can_i_order".tr,
                    margin: getMargin(
                      top: 16,
                    ),
                    items: controller.faqModelObj.value.dropdownItemList2.value,
                    onChanged: (value) {
                      controller.onSelected2(value);
                    },
                  ),
                  Container(
                    width: getHorizontalSize(
                      387,
                    ),
                    margin: getMargin(
                      top: 21,
                      right: 8,
                    ),
                    child: Text(
                      "msg_placing_an_order".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratRegular14Gray90002,
                    ),
                  ),
                  CustomDropDown(
                    focusNode: FocusNode(),
                    icon: Container(
                      margin: getMargin(
                        left: 30,
                        right: 19,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgArrowdownBlack90001,
                      ),
                    ),
                    hintText: "msg_how_do_i_know_at".tr,
                    margin: getMargin(
                      top: 18,
                    ),
                    padding: DropDownPadding.PaddingT11,
                    items: controller.faqModelObj.value.dropdownItemList3.value,
                    onChanged: (value) {
                      controller.onSelected3(value);
                    },
                  ),
                  CustomDropDown(
                    focusNode: FocusNode(),
                    icon: Container(
                      margin: getMargin(
                        left: 30,
                        right: 19,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgArrowdownBlack90001,
                      ),
                    ),
                    hintText: "msg_what_is_minimum".tr,
                    margin: getMargin(
                      top: 16,
                    ),
                    padding: DropDownPadding.PaddingT18_1,
                    items: controller.faqModelObj.value.dropdownItemList4.value,
                    onChanged: (value) {
                      controller.onSelected4(value);
                    },
                  ),
                  CustomDropDown(
                    focusNode: FocusNode(),
                    icon: Container(
                      margin: getMargin(
                        left: 30,
                        right: 19,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgArrowdownBlack90001,
                      ),
                    ),
                    hintText: "msg_what_if_i_want_to".tr,
                    margin: getMargin(
                      top: 16,
                    ),
                    padding: DropDownPadding.PaddingT18_1,
                    items: controller.faqModelObj.value.dropdownItemList5.value,
                    onChanged: (value) {
                      controller.onSelected5(value);
                    },
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Text(
                      "msg_not_listed_your".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratSemiBold20Black90001,
                    ),
                  ),
                  CustomTextFormField(
                    focusNode: FocusNode(),
                    controller: controller.framesevenController,
                    hintText: "msg_write_your_question_query".tr,
                    margin: getMargin(
                      top: 14,
                    ),
                    padding: TextFormFieldPadding.PaddingT51,
                    fontStyle: TextFormFieldFontStyle.MontserratRegular14,
                    textInputAction: TextInputAction.done,
                    maxLines: 6,
                  ),
                  CustomButton(
                    height: getVerticalSize(
                      50,
                    ),
                    width: getHorizontalSize(
                      208,
                    ),
                    text: "lbl_submit".tr,
                    margin: getMargin(
                      top: 30,
                      bottom: 111,
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
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
