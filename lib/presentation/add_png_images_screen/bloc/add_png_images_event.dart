part of 'add_png_images_bloc.dart';

class AddPngImagesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AddPngImagesInitialEvent extends AddPngImagesEvent {
  @override
  List<Object?> get props => [];
}

class CreateAddEvent extends AddPngImagesEvent {
  CreateAddEvent({this.onCreateAddEventSuccess, this.onCreateAddEventError});
  Function? onCreateAddEventSuccess;
  Function? onCreateAddEventError;
  @override
  List<Object?> get props => [onCreateAddEventSuccess, onCreateAddEventError];
}
