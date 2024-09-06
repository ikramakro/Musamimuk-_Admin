// ignore_for_file: must_be_immutable

part of 'add_online_designs_bloc.dart';

class AddOnlineDesignsState extends Equatable {
  AddOnlineDesignsState(
      {this.searchController,
      this.nameController,
      this.writerelatedController,
      this.selectedDropDownValue,
      this.selectedDropDownValue1,
      this.addOnlineDesignsModelObj});
  TextEditingController? searchController;
  TextEditingController? nameController;
  TextEditingController? writerelatedController;
  SelectionPopupModel? selectedDropDownValue;
  SelectionPopupModel? selectedDropDownValue1;
  AddOnlineDesignsModel? addOnlineDesignsModelObj;
  @override
  List<Object?> get props => [
        searchController,
        nameController,
        writerelatedController,
        selectedDropDownValue,
        selectedDropDownValue1,
        addOnlineDesignsModelObj
      ];
  AddOnlineDesignsState copyWith({
    TextEditingController? searchController,
    TextEditingController? nameController,
    TextEditingController? writerelatedController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    AddOnlineDesignsModel? addOnlineDesignsModelObj,
  }) {
    return AddOnlineDesignsState(
      searchController: searchController ?? this.searchController,
      nameController: nameController ?? this.nameController,
      writerelatedController:
          writerelatedController ?? this.writerelatedController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      addOnlineDesignsModelObj:
          addOnlineDesignsModelObj ?? this.addOnlineDesignsModelObj,
    );
  }
}
