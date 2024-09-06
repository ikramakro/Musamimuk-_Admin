part of 'add_shapes_bloc.dart';

class AddShapesState extends Equatable {
  final AddShapesModel? addShapesModelObj;
  final String? imagePath;
  final TextEditingController? searchController;
  final TextEditingController? nameController;
  final TextEditingController? writerelatedController;
  final SelectionPopupModel? selectedCategory;
  final String? selectedCategoryid;
  const AddShapesState({
    this.selectedCategoryid,
    this.addShapesModelObj,
    this.imagePath,
    this.searchController,
    this.nameController,
    this.writerelatedController,
    this.selectedCategory,
  });

  AddShapesState copyWith({
    
   String? selectedCategoryid,
    AddShapesModel? addShapesModelObj,
    String? imagePath,
    TextEditingController? searchController,
    TextEditingController? nameController,
    TextEditingController? writerelatedController,
    SelectionPopupModel? selectedCategory,
  }) {
    return AddShapesState(
      addShapesModelObj: addShapesModelObj ?? this.addShapesModelObj,
      imagePath: imagePath ?? this.imagePath,
      searchController: searchController ?? this.searchController,
      nameController: nameController ?? this.nameController,
      writerelatedController:
          writerelatedController ?? this.writerelatedController,
      selectedCategory: selectedCategory ?? this.selectedCategory,
      selectedCategoryid: selectedCategoryid??this.selectedCategoryid
    );
  }

  @override
  List<Object?> get props => [
        addShapesModelObj,
        imagePath,
        searchController,
        nameController,
        writerelatedController,
        selectedCategory,
      ];
}
