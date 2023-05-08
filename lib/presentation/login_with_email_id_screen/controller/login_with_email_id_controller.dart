import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:abdurrahmanilyas6_s_application1/presentation/login_with_email_id_screen/models/login_with_email_id_model.dart';
import 'package:flutter/material.dart';

class LoginWithEmailIdController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordoneController = TextEditingController();

  Rx<LoginWithEmailIdModel> loginWithEmailIdModelObj =
      LoginWithEmailIdModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordoneController.dispose();
  }
}
