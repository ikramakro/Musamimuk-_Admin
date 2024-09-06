part of 'fonts_bloc.dart';

class FontsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FontsInitialEvent extends FontsEvent {
  @override
  List<Object?> get props => [];
}

class ChangeSwitchEvent extends FontsEvent {
  ChangeSwitchEvent({required this.value});
  bool value;
  @override
  List<Object?> get props => [value];
}

class UpdateChipViewEvent extends FontsEvent {
  UpdateChipViewEvent({required this.index, this.isSelected});
  int index;
  bool? isSelected;
  @override
  List<Object?> get props => [index, isSelected];
}

class FetchListEvent extends FontsEvent {
  FetchListEvent({this.onFetchListEventSuccess, this.onFetchListEventError});
  Function? onFetchListEventSuccess;
  Function? onFetchListEventError;
  @override
  List<Object?> get props => [onFetchListEventSuccess, onFetchListEventError];
}
