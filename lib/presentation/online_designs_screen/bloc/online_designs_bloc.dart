import 'dart:async';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/chipviewview_item_model.dart';
import '../models/online_designs_model.dart';
import '../models/userprofile_item_model.dart';

part 'online_designs_event.dart';
part 'online_designs_state.dart';

/// A bloc that manages the state of a Shapes according to the event that is dispatched to it.
// ignore_for_file: must_be_immutable
class OnlineDesignsBloc extends Bloc<OnlineDesignsEvent, OnlineDesignsState> {
  OnlineDesignsBloc(OnlineDesignsState initialState) : super(initialState) {
    on<OnlineDesignsInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
    // on<FetchListEvent>(_callGetLogoList);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<OnlineDesignsState> emit,
  ) {
    List<ChipviewviewItemModel> newList = List<ChipviewviewItemModel>.from(
        state.shapesModelObj!.chipviewviewItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        shapesModelObj:
            state.shapesModelObj?.copyWith(chipviewviewItemList: newList)));
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(viewOne: "View", edit: "Edit", delete: "Delete"),
      UserprofileItemModel(viewOne: "View", edit: "Edit", delete: "Delete"),
      UserprofileItemModel(viewOne: "View", edit: "Edit", delete: "Delete"),
      UserprofileItemModel(viewOne: "View", edit: "Edit", delete: "Delete"),
      UserprofileItemModel(viewOne: "View", edit: "Edit", delete: "Delete"),
      UserprofileItemModel(edit: "Edit", delete: "Delete"),
      UserprofileItemModel(edit: "Edit", delete: "Delete"),
      UserprofileItemModel(edit: "Edit", delete: "Delete"),
      UserprofileItemModel(edit: "Edit", delete: "Delete"),
      UserprofileItemModel(edit: "Edit", delete: "Delete"),
    ];
  }

  List<ChipviewviewItemModel> fillChipviewviewItemList() {
    return List.generate(3, (index) => ChipviewviewItemModel());
  }

  /// Calls the https://api.pixlerpro.com/api/logo/list API and triggers a [FetchListEvent] event on the [OnlineDesignsBloc] bloc.
  ///
  /// The [BuildContext] parameter represents current [BuildContext]
  _onInitialize(
    OnlineDesignsInitialEvent event,
    Emitter<OnlineDesignsState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        shapesModelObj: state.shapesModelObj?.copyWith(
      userprofileItemList: fillUserprofileItemList(),
      chipviewviewItemList: fillChipviewviewItemList(),
    )));
  }
}
