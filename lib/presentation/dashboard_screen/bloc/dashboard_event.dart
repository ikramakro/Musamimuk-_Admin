part of 'dashboard_bloc.dart';

class DashboardEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class DashboardInitialEvent extends DashboardEvent {
  @override
  List<Object?> get props => [];
}

class TabChangeEvent extends DashboardEvent {
  TabChangeEvent({this.index = 0});
  final int index;
  @override
  List<Object?> get props => [];
}
