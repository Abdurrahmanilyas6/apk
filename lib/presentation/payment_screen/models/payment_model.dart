import 'package:get/get.dart';
import 'payment_item_model.dart';

class PaymentModel {
  Rx<List<PaymentItemModel>> paymentItemList =
      Rx(List.generate(2, (index) => PaymentItemModel()));
}
