import 'package:get/get.dart';
import 'listname_item_model.dart';
import 'listname1_item_model.dart';
import 'listtype_item_model.dart';
import 'listplus_item_model.dart';
import 'listproductname_item_model.dart';

class ExploreModel {
  Rx<List<ListnameItemModel>> listnameItemList =
      Rx(List.generate(4, (index) => ListnameItemModel()));

  Rx<List<Listname1ItemModel>> listname1ItemList =
      Rx(List.generate(4, (index) => Listname1ItemModel()));

  Rx<List<ListtypeItemModel>> listtypeItemList =
      Rx(List.generate(4, (index) => ListtypeItemModel()));

  Rx<List<ListplusItemModel>> listplusItemList =
      Rx(List.generate(4, (index) => ListplusItemModel()));

  Rx<List<ListproductnameItemModel>> listproductnameItemList =
      Rx(List.generate(4, (index) => ListproductnameItemModel()));
}
