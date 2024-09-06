// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';

class AddFontsModel extends Equatable {
  AddFontsModel({this.dropdownItemList = const []});
  List<SelectionPopupModel> dropdownItemList;
  AddFontsModel copyWith({List<SelectionPopupModel>? dropdownItemList}) {
    return AddFontsModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
