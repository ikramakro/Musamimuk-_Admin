// ignore_for_file: must_be_immutable

part of 'add_fonts_bloc.dart';

class AddFontsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AddFontsInitialEvent extends AddFontsEvent {
  @override
  List<Object?> get props => [];
}

class CreateAddEvent extends AddFontsEvent {
  CreateAddEvent({this.onCreateAddEventSuccess, this.onCreateAddEventError});
  Function? onCreateAddEventSuccess;
  Function? onCreateAddEventError;
  @override
  List<Object?> get props => [onCreateAddEventSuccess, onCreateAddEventError];
}
