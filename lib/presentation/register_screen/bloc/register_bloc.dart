import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/register_model.dart';
part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(RegisterState initialState) : super(initialState) {
    on<RegisterInitialEvent>(_onInitialize);
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
      )
    ];
  }

  _onInitialize(
    RegisterInitialEvent event,
    Emitter<RegisterState> emit,
  ) async {
    emit(state.copyWith(
      userNameController: TextEditingController(),
      emailController: TextEditingController(),
      passwordController: TextEditingController(),
    ));
    emit(state.copyWith(
        registerModelObj: state.registerModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }
}
