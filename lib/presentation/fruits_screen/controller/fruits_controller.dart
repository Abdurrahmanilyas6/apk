import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:abdurrahmanilyas6_s_application1/presentation/fruits_screen/models/fruits_model.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_bottom_bar.dart';

class FruitsController extends GetxController {
  Rx<FruitsModel> fruitsModelObj = FruitsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
