part of 'start_a_new_contest_bloc.dart';

class StartANewContestEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class StartANewContestInitialEvent extends StartANewContestEvent {
  @override
  List<Object?> get props => [];
}

class CreateAddEvent extends StartANewContestEvent {
  CreateAddEvent({this.onCreateAddEventSuccess, this.onCreateAddEventError});
  Function? onCreateAddEventSuccess;
  Function? onCreateAddEventError;
  @override
  List<Object?> get props => [onCreateAddEventSuccess, onCreateAddEventError];
}
