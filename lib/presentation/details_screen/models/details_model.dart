import 'package:get/get.dart';
import 'listairplane_item_model.dart';

class DetailsModel {
  Rx<List<ListairplaneItemModel>> listairplaneItemList =
      Rx(List.generate(3, (index) => ListairplaneItemModel()));
}
