import 'package:get/get.dart';
import 'listbackground_item_model.dart';
import 'listfortunerice_item_model.dart';
import 'listsoftdrinks_item_model.dart';
import 'listgranolaprem_item_model.dart';

class HomeScreenModel {
  Rx<List<ListbackgroundItemModel>> listbackgroundItemList =
      Rx(List.generate(4, (index) => ListbackgroundItemModel()));

  Rx<List<ListfortunericeItemModel>> listfortunericeItemList =
      Rx(List.generate(3, (index) => ListfortunericeItemModel()));

  Rx<List<ListsoftdrinksItemModel>> listsoftdrinksItemList =
      Rx(List.generate(3, (index) => ListsoftdrinksItemModel()));

  Rx<List<ListgranolapremItemModel>> listgranolapremItemList =
      Rx(List.generate(3, (index) => ListgranolapremItemModel()));
}
