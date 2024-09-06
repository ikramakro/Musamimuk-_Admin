part of 'fonts_bloc.dart';

class FontsState extends Equatable {
  FontsState({this.fontsModelObj});
  FontsModel? fontsModelObj;
  @override
  List<Object?> get props => [fontsModelObj];
  FontsState copyWith({FontsModel? fontsModelObj}) {
    return FontsState(
      fontsModelObj: fontsModelObj ?? this.fontsModelObj,
    );
  }
}
