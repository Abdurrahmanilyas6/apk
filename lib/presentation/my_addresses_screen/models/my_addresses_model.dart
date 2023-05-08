import 'package:get/get.dart';
import 'my_addresses_item_model.dart';

class MyAddressesModel {
  Rx<List<MyAddressesItemModel>> myAddressesItemList =
      Rx(List.generate(2, (index) => MyAddressesItemModel()));
}
