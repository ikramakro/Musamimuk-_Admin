import 'dart:async';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/chipviewview_item_model.dart';
import '../models/png_images_model.dart';
import '../models/userprofile_item_model.dart';

part 'png_images_event.dart';
part 'png_images_state.dart';

/// A bloc that manages the state of a Shapes according to the event that is dispatched to it.
// ignore_for_file: must_be_immutable
class PngImagesBloc extends Bloc<PngImagesEvent, PngImagesState> {
  PngImagesBloc(PngImagesState initialState) : super(initialState) {
    on<PngImagesInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
    // on<FetchListEvent>(_callGetLogoList);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<PngImagesState> emit,
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

  /// Calls the https://api.pixlerpro.com/api/logo/list API and triggers a [FetchListEvent] event on the [PngImagesBloc] bloc.
  ///
  /// The [BuildContext] parameter represents current [BuildContext]
  _onInitialize(
    PngImagesInitialEvent event,
    Emitter<PngImagesState> emit,
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
