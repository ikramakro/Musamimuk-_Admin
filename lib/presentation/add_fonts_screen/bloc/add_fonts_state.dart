// ignore_for_file: must_be_immutable

part of 'add_fonts_bloc.dart';

class AddFontsState extends Equatable {
  AddFontsState(
      {this.searchController,
      this.nameController,
      this.writetagsoneController,
      this.selectedDropDownValue,
      this.addFontsModelObj});
  TextEditingController? searchController;
  TextEditingController? nameController;
  TextEditingController? writetagsoneController;
  SelectionPopupModel? selectedDropDownValue;
  AddFontsModel? addFontsModelObj;
  @override
  List<Object?> get props => [
        searchController,
        nameController,
        writetagsoneController,
        selectedDropDownValue,
        addFontsModelObj
      ];
  AddFontsState copyWith({
    TextEditingController? searchController,
    TextEditingController? nameController,
    TextEditingController? writetagsoneController,
    SelectionPopupModel? selectedDropDownValue,
    AddFontsModel? addFontsModelObj,
  }) {
    return AddFontsState(
      searchController: searchController ?? this.searchController,
      nameController: nameController ?? this.nameController,
      writetagsoneController:
          writetagsoneController ?? this.writetagsoneController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      addFontsModelObj: addFontsModelObj ?? this.addFontsModelObj,
    );
  }
}
