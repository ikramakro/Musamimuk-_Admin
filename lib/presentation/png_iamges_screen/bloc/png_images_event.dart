part of 'png_images_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// Shapes widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class PngImagesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Shapes widget is first created.
class PngImagesInitialEvent extends PngImagesEvent {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the user calls the https://api.pixlerpro.com/api/logo/list API.
// ignore_for_file: must_be_immutable
class FetchListEvent extends PngImagesEvent {
  FetchListEvent({this.onFetchListEventSuccess, this.onFetchListEventError});

  Function? onFetchListEventSuccess;
  Function? onFetchListEventError;

  @override
  List<Object?> get props => [onFetchListEventSuccess, onFetchListEventError];
}

/// Event for changing ChipView selection
// ignore_for_file: must_be_immutable
class UpdateChipViewEvent extends PngImagesEvent {
  UpdateChipViewEvent({required this.index, this.isSelected});

  int index;
  bool? isSelected;

  @override
  List<Object?> get props => [index, isSelected];
}
