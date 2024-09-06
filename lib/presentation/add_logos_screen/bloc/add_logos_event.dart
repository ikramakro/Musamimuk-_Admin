// ignore_for_file: must_be_immutable

part of 'add_logos_bloc.dart';

class AddLogosEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AddLogosInitialEvent extends AddLogosEvent {
  @override
  List<Object?> get props => [];
}

class CreateAddEvent extends AddLogosEvent {
  CreateAddEvent({this.onCreateAddEventSuccess, this.onCreateAddEventError});
  Function? onCreateAddEventSuccess;
  Function? onCreateAddEventError;
  @override
  List<Object?> get props => [onCreateAddEventSuccess, onCreateAddEventError];
}
