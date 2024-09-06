part of 'add_shapes_bloc.dart';

class AddShapesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AddShapesInitialEvent extends AddShapesEvent {
  @override
  List<Object?> get props => [];
}

class CreateAddEvent extends AddShapesEvent {
  CreateAddEvent({this.onCreateAddEventSuccess, this.onCreateAddEventError});
  Function? onCreateAddEventSuccess;
  Function? onCreateAddEventError;
  @override
  List<Object?> get props => [onCreateAddEventSuccess, onCreateAddEventError];
}

class PickImageEvent extends AddShapesEvent {
  PickImageEvent({this.onPickImageSuccess, this.onPickImageError});
  Function? onPickImageSuccess;
  Function? onPickImageError;
  @override
  List<Object?> get props => [onPickImageSuccess, onPickImageError];
}

class FetchCategoriesEvent extends AddShapesEvent {
  @override
  List<Object?> get props => [];
}

class SubmitShapeEvent extends AddShapesEvent {
  final Map<String, dynamic> formData;
  SubmitShapeEvent({required this.formData});
  @override
  List<Object?> get props => [formData];
}

class OnChangeDropDownEvent extends AddShapesEvent {
  final String title;
  OnChangeDropDownEvent({required this.title});
  @override
  List<Object?> get props => [title];
}
