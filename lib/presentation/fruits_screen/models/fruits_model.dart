import 'package:get/get.dart';
import 'fruits_item_model.dart';

class FruitsModel {
  Rx<List<FruitsItemModel>> fruitsItemList =
      Rx(List.generate(8, (index) => FruitsItemModel()));
}
