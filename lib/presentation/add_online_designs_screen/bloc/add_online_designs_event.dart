// ignore_for_file: must_be_immutable

part of 'add_online_designs_bloc.dart';

class AddOnlineDesignsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AddOnlineDesignsInitialEvent extends AddOnlineDesignsEvent {
  @override
  List<Object?> get props => [];
}

class CreateAddEvent extends AddOnlineDesignsEvent {
  CreateAddEvent({this.onCreateAddEventSuccess, this.onCreateAddEventError});
  Function? onCreateAddEventSuccess;
  Function? onCreateAddEventError;
  @override
  List<Object?> get props => [onCreateAddEventSuccess, onCreateAddEventError];
}
