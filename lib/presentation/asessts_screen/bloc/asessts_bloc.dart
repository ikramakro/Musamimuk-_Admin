import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/asessts_model.dart';
part 'asessts_event.dart';
part 'asessts_state.dart';

class AsesstsBloc extends Bloc<AsesstsEvent, AsesstsState> {
  AsesstsBloc(AsesstsState initialState) : super(initialState) {
    on<AsesstsInitialEvent>(_onInitialize);
  }
  _onInitialize(
    AsesstsInitialEvent event,
    Emitter<AsesstsState> emit,
  ) async {
    emit(state.copyWith(
      assetsvalueoneController: TextEditingController(),
    ));
  }
}
