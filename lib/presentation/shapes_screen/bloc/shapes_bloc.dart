import 'dart:async';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/chipviewview_item_model.dart';
import '../models/shapes_model.dart';
import '../models/userprofile_item_model.dart';

part 'shapes_event.dart';
part 'shapes_state.dart';

/// A bloc that manages the state of a Shapes according to the event that is dispatched to it.
// ignore_for_file: must_be_immutable
class ShapesBloc extends Bloc<ShapesEvent, ShapesState> {
  ShapesBloc(ShapesState initialState) : super(initialState) {
    on<ShapesInitialEvent>(_onInitialize);
    // on<UpdateChipViewEvent>(_updateChipView);
    // on<FetchListEvent>(_callGetLogoList);
  }

  _onInitialize(
    ShapesInitialEvent event,
    Emitter<ShapesState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith());
  }
}
