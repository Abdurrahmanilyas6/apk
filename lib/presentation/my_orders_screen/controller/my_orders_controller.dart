import 'package:abdurrahmanilyas6_s_application1/core/app_export.dart';
import 'package:abdurrahmanilyas6_s_application1/presentation/my_orders_screen/models/my_orders_model.dart';
import 'package:abdurrahmanilyas6_s_application1/widgets/custom_bottom_bar.dart';

class MyOrdersController extends GetxController {
  Rx<MyOrdersModel> myOrdersModelObj = MyOrdersModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
