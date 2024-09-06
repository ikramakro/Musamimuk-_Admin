import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/revenue_model.dart';
part 'revenue_event.dart';
part 'revenue_state.dart';

class RevenueBloc extends Bloc<RevenueEvent, RevenueState> {
  RevenueBloc(RevenueState initialState) : super(initialState) {
    on<RevenueInitialEvent>(_onInitialize);
  }
  _onInitialize(
    RevenueInitialEvent event,
    Emitter<RevenueState> emit,
  ) async {
    emit(state.copyWith(
      assetsEditTextController: TextEditingController(),
    ));
  }
}
