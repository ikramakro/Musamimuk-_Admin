part of 'contest_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// ContestDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ContestDetailsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ContestDetails widget is first created.
class ContestDetailsInitialEvent extends ContestDetailsEvent {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the user calls the https://api.pixlerpro.com/api/logo/list API.
// ignore_for_file: must_be_immutable
class FetchListEvent extends ContestDetailsEvent {
  FetchListEvent({this.onFetchListEventSuccess, this.onFetchListEventError});

  Function? onFetchListEventSuccess;
  Function? onFetchListEventError;

  @override
  List<Object?> get props => [onFetchListEventSuccess, onFetchListEventError];
}
