import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:abdurrahmanilyas6_s_application1/presentation/payment_add_new_address_bottomsheet/models/payment_add_new_address_model.dart';
import 'package:flutter/material.dart';

class PaymentAddNewAddressController extends GetxController {
  TextEditingController countryController = TextEditingController();

  TextEditingController stateController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController areaController = TextEditingController();

  TextEditingController landmarkController = TextEditingController();

  Rx<PaymentAddNewAddressModel> paymentAddNewAddressModelObj =
      PaymentAddNewAddressModel().obs;

  Rx<bool> isCheckbox = false.obs;

  Rx<bool> isCheckbox1 = false.obs;

  Rx<bool> isCheckbox2 = false.obs;

  Rx<bool> isCheckbox3 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    countryController.dispose();
    stateController.dispose();
    cityController.dispose();
    areaController.dispose();
    landmarkController.dispose();
  }
}
