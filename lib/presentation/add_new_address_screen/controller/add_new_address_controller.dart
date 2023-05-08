import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:abdurrahmanilyas6_s_application1/presentation/add_new_address_screen/models/add_new_address_model.dart';
import 'package:flutter/material.dart';

class AddNewAddressController extends GetxController {
  TextEditingController countryController = TextEditingController();

  TextEditingController stateController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController pincodeController = TextEditingController();

  TextEditingController areaController = TextEditingController();

  TextEditingController landmarkController = TextEditingController();

  Rx<AddNewAddressModel> addNewAddressModelObj = AddNewAddressModel().obs;

  Rx<bool> isCheckbox = false.obs;

  Rx<bool> isCheckbox1 = false.obs;

  Rx<bool> isCheckbox2 = false.obs;

  Rx<bool> isCheckbox3 = false.obs;

  Rx<bool> isCheckbox4 = false.obs;

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
    pincodeController.dispose();
    areaController.dispose();
    landmarkController.dispose();
  }
}
