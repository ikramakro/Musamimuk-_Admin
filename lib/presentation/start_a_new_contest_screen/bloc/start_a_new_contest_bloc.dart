import 'dart:async';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/start_a_new_contest_model.dart';
part 'start_a_new_contest_event.dart';
part 'start_a_new_contest_state.dart';

class StartANewContestBloc
    extends Bloc<StartANewContestEvent, StartANewContestState> {
  StartANewContestBloc(StartANewContestState initialState)
      : super(initialState) {
    on<StartANewContestInitialEvent>(_onInitialize);
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
      )
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
      )
    ];
  }

  _onInitialize(
    StartANewContestInitialEvent event,
    Emitter<StartANewContestState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      nameController: TextEditingController(),
      writerelatedController: TextEditingController(),
    ));
    emit(state.copyWith(
        startANewContestModelObj: state.startANewContestModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      dropdownItemList1: fillDropdownItemList1(),
    )));
  }
}
