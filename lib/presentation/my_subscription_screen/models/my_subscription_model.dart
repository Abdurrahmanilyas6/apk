import 'package:get/get.dart';
import 'package:abdurrahmanilyas6_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';
import 'my_subscription_item_model.dart';

class MySubscriptionModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<MySubscriptionItemModel>> mySubscriptionItemList =
      Rx(List.generate(3, (index) => MySubscriptionItemModel()));
}
