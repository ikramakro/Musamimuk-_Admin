import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/contest_details_model.dart.dart';

part 'contest_details_event.dart';
part 'contest_details_state.dart';

/// A bloc that manages the state of a ContestDetails according to the event that is dispatched to it.
// ignore_for_file: must_be_immutable
class ContestDetailsBloc
    extends Bloc<ContestDetailsEvent, ContestDetailsState> {
  ContestDetailsBloc(ContestDetailsState initialState) : super(initialState) {
    on<ContestDetailsInitialEvent>(_onInitialize);
    // on<FetchListEvent>(_callGetLogoList);
  }

  /// Calls the https://api.pixlerpro.com/api/logo/list API and triggers a [FetchListEvent] event on the [ContestDetailsBloc] bloc.
  ///
  /// The [BuildContext] parameter represents current [BuildContext]
  _onInitialize(
    ContestDetailsInitialEvent event,
    Emitter<ContestDetailsState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
