import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

class StartANewContestModel extends Equatable {
  StartANewContestModel(
      {this.dropdownItemList = const [], this.dropdownItemList1 = const []});
  List<SelectionPopupModel> dropdownItemList;
  List<SelectionPopupModel> dropdownItemList1;
  StartANewContestModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<SelectionPopupModel>? dropdownItemList1,
  }) {
    return StartANewContestModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      dropdownItemList1: dropdownItemList1 ?? this.dropdownItemList1,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, dropdownItemList1];
}
