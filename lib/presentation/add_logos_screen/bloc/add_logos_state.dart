// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/add_logos_model.dart';

class AddLogosState extends Equatable {
  AddLogosState(
      {this.searchController,
      this.nameController,
      this.writerelatedController,
      this.selectedDropDownValue,
      this.selectedDropDownValue1,
      this.addLogosModelObj});
  TextEditingController? searchController;
  TextEditingController? nameController;
  TextEditingController? writerelatedController;
  SelectionPopupModel? selectedDropDownValue;
  SelectionPopupModel? selectedDropDownValue1;
  AddLogosModel? addLogosModelObj;
  @override
  List<Object?> get props => [
        searchController,
        nameController,
        writerelatedController,
        selectedDropDownValue,
        selectedDropDownValue1,
        addLogosModelObj
      ];
  AddLogosState copyWith({
    TextEditingController? searchController,
    TextEditingController? nameController,
    TextEditingController? writerelatedController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    AddLogosModel? addLogosModelObj,
  }) {
    return AddLogosState(
      searchController: searchController ?? this.searchController,
      nameController: nameController ?? this.nameController,
      writerelatedController:
          writerelatedController ?? this.writerelatedController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      addLogosModelObj: addLogosModelObj ?? this.addLogosModelObj,
    );
  }
}
