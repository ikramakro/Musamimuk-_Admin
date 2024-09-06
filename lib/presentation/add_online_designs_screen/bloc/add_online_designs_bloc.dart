import 'dart:async';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../data/repository/repository.dart';
import '../models/add_online_designs_model.dart';

part 'add_online_designs_event.dart';
part 'add_online_designs_state.dart';

/// A bloc that manages the state of AddOnlineDesigns according to the event that is dispatched to it.
// ignore_for_file: must_be_immutable
class AddOnlineDesignsBloc
    extends Bloc<AddOnlineDesignsEvent, AddOnlineDesignsState> {
  AddOnlineDesignsBloc(AddOnlineDesignsState initialState)
      : super(initialState) {
    on<AddOnlineDesignsInitialEvent>(_onInitialize);
    // on<CreateAddEvent>(_callAddLogo);
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      ),
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList1() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      ),
    ];
  }

  FutureOr<void> _onInitialize(
    AddOnlineDesignsInitialEvent event,
    Emitter<AddOnlineDesignsState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      nameController: TextEditingController(),
      writerelatedController: TextEditingController(),
    ));
    emit(state.copyWith(
      addOnlineDesignsModelObj: state.addOnlineDesignsModelObj?.copyWith(
        dropdownItemList: fillDropdownItemList(),
        dropdownItemList1: fillDropdownItemList1(),
      ),
    ));
  }

  /// Calls [https://api.pixlerpro.com/api/logo/add] with the provided event and emits the state.
  ///
  /// The [CreateAddEvent] parameter is used for handling event data
  /// The [emit] parameter is used for emitting the state
  ///
  /// Throws an error if an error occurs during the API call process.
}
