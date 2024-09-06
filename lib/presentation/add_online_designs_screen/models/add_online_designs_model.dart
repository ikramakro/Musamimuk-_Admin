// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

class AddOnlineDesignsModel extends Equatable {
  AddOnlineDesignsModel(
      {this.dropdownItemList = const [], this.dropdownItemList1 = const []});
  List<SelectionPopupModel> dropdownItemList;
  List<SelectionPopupModel> dropdownItemList1;
  AddOnlineDesignsModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<SelectionPopupModel>? dropdownItemList1,
  }) {
    return AddOnlineDesignsModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      dropdownItemList1: dropdownItemList1 ?? this.dropdownItemList1,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, dropdownItemList1];
}
