import '../controller/my_subscription_controller.dart';
import 'package:get/get.dart';

class MySubscriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MySubscriptionController());
  }
}
