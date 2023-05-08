import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:abdurrahmanilyas6_s_application1/presentation/user_screen/models/user_model.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_bottom_bar.dart';

class UserController extends GetxController {
  Rx<UserModel> userModelObj = UserModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
