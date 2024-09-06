import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';

class RegisterModel extends Equatable {
  RegisterModel({this.dropdownItemList = const []});
  List<SelectionPopupModel> dropdownItemList;
  RegisterModel copyWith({List<SelectionPopupModel>? dropdownItemList}) {
    return RegisterModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
