part of 'add_png_images_bloc.dart';

class AddPngImagesState extends Equatable {
  AddPngImagesState(
      {this.searchController,
      this.nameController,
      this.writerelatedController,
      this.selectedDropDownValue,
      this.selectedDropDownValue1,
      this.addPngImagesModelObj});
  TextEditingController? searchController;
  TextEditingController? nameController;
  TextEditingController? writerelatedController;
  SelectionPopupModel? selectedDropDownValue;
  SelectionPopupModel? selectedDropDownValue1;
  AddPngImagesModel? addPngImagesModelObj;
  @override
  List<Object?> get props => [
        searchController,
        nameController,
        writerelatedController,
        selectedDropDownValue,
        selectedDropDownValue1,
        addPngImagesModelObj
      ];
  AddPngImagesState copyWith({
    TextEditingController? searchController,
    TextEditingController? nameController,
    TextEditingController? writerelatedController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    AddPngImagesModel? addPngImagesModelObj,
  }) {
    return AddPngImagesState(
      searchController: searchController ?? this.searchController,
      nameController: nameController ?? this.nameController,
      writerelatedController:
          writerelatedController ?? this.writerelatedController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      addPngImagesModelObj: addPngImagesModelObj ?? this.addPngImagesModelObj,
    );
  }
}
