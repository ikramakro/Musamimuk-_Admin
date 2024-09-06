part of 'contest_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// Contest widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ContestEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Contest widget is first created.
class ContestInitialEvent extends ContestEvent {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the user calls the https://api.pixlerpro.com/api/logo/list API.
// ignore_for_file: must_be_immutable
class FetchListEvent extends ContestEvent {
  FetchListEvent({this.onFetchListEventSuccess, this.onFetchListEventError});

  Function? onFetchListEventSuccess;
  Function? onFetchListEventError;

  @override
  List<Object?> get props => [onFetchListEventSuccess, onFetchListEventError];
}
