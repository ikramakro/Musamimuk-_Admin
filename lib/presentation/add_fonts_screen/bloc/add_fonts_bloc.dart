import 'dart:async';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../data/repository/repository.dart';
import '../models/add_fonts_model.dart';
part 'add_fonts_event.dart';
part 'add_fonts_state.dart';

/// A bloc that manages the state of a AddFonts according to the event that is dispatched to it.
// ignore_for_file: must_be_immutable
class AddFontsBloc extends Bloc<AddFontsEvent, AddFontsState> {
  AddFontsBloc(AddFontsState initialState) : super(initialState) {
    on<AddFontsInitialEvent>(_onInitialize);
    on<CreateAddEvent>(_callAddLogo);
  }
  // var postAddLogoResp = PostAddLogoResp();
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
      )
    ];
  }

  _onInitialize(
    AddFontsInitialEvent event,
    Emitter<AddFontsState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      nameController: TextEditingController(),
      writetagsoneController: TextEditingController(),
    ));
    emit(state.copyWith(
        addFontsModelObj: state.addFontsModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }

  /// Calls [https://api.pixlerpro.com/api/logo/add] with the provided event and emits the state.
  /// The [CreateAddEvent] parameter is used for handling event data
  /// The [emit] parameter is used for emitting the state
  /// Throws an error if an error occurs during the API call process.
  FutureOr<void> _callAddLogo(
    CreateAddEvent event,
    Emitter<AddFontsState> emit,
  ) async {
    // var postAddLogoReq = PostAddLogoReq();
    // await _repository
    //     .addLogo(
    //   requestData: postAddLogoReq.toJson(),
    // )
    //     .then((value) async {
    //   postAddLogoResp = value;
    //   _onAddLogoSuccess(value, emit);
    //   event.onCreateAddEventSuccess?.call();
    // }).onError((error, stackTrace) {
    //   _onAddLogoError();
    //   event.onCreateAddEventError?.call();
    // });
  }
}
