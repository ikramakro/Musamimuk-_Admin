// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:musamimuk_admin/data/models/selectionPopupModel/selection_popup_model.dart';

class AddLogosModel extends Equatable {
  AddLogosModel(
      {this.dropdownItemList = const [], this.dropdownItemList1 = const []});
  List<SelectionPopupModel> dropdownItemList;
  List<SelectionPopupModel> dropdownItemList1;
  AddLogosModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<SelectionPopupModel>? dropdownItemList1,
  }) {
    return AddLogosModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      dropdownItemList1: dropdownItemList1 ?? this.dropdownItemList1,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, dropdownItemList1];
}
