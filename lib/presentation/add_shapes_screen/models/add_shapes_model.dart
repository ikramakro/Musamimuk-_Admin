import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

class AddShapesModel extends Equatable {
  AddShapesModel({this.dropdownItemList = const []});
  List<SelectionPopupModel> dropdownItemList;
  AddShapesModel copyWith({List<SelectionPopupModel>? dropdownItemList}) {
    return AddShapesModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
