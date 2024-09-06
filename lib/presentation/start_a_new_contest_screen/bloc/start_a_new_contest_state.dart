part of 'start_a_new_contest_bloc.dart';

class StartANewContestState extends Equatable {
  StartANewContestState(
      {this.searchController,
      this.nameController,
      this.writerelatedController,
      this.selectedDropDownValue,
      this.selectedDropDownValue1,
      this.startANewContestModelObj});
  TextEditingController? searchController;
  TextEditingController? nameController;
  TextEditingController? writerelatedController;
  SelectionPopupModel? selectedDropDownValue;
  SelectionPopupModel? selectedDropDownValue1;
  StartANewContestModel? startANewContestModelObj;
  @override
  List<Object?> get props => [
        searchController,
        nameController,
        writerelatedController,
        selectedDropDownValue,
        selectedDropDownValue1,
        startANewContestModelObj
      ];
  StartANewContestState copyWith({
    TextEditingController? searchController,
    TextEditingController? nameController,
    TextEditingController? writerelatedController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    StartANewContestModel? startANewContestModelObj,
  }) {
    return StartANewContestState(
      searchController: searchController ?? this.searchController,
      nameController: nameController ?? this.nameController,
      writerelatedController:
          writerelatedController ?? this.writerelatedController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      startANewContestModelObj:
          startANewContestModelObj ?? this.startANewContestModelObj,
    );
  }
}
