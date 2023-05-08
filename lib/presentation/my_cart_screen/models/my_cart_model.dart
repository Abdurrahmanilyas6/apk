import 'package:get/get.dart';
import 'listtype1_item_model.dart';
import 'listminimize_item_model.dart';

class MyCartModel {
  Rx<List<Listtype1ItemModel>> listtype1ItemList =
      Rx(List.generate(3, (index) => Listtype1ItemModel()));

  Rx<List<ListminimizeItemModel>> listminimizeItemList =
      Rx(List.generate(2, (index) => ListminimizeItemModel()));
}
