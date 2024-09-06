import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

class AddPngImagesModel extends Equatable {
  AddPngImagesModel(
      {this.dropdownItemList = const [], this.dropdownItemList1 = const []});
  List<SelectionPopupModel> dropdownItemList;
  List<SelectionPopupModel> dropdownItemList1;
  AddPngImagesModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<SelectionPopupModel>? dropdownItemList1,
  }) {
    return AddPngImagesModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      dropdownItemList1: dropdownItemList1 ?? this.dropdownItemList1,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, dropdownItemList1];
}
