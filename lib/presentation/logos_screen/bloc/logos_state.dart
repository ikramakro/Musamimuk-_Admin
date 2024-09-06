part of 'logos_bloc.dart';

class LogosState extends Equatable {
  LogosState({this.searchController, this.shapesModelObj});
  TextEditingController? searchController;
  LogosModel? shapesModelObj;
  @override
  List<Object?> get props => [searchController, shapesModelObj];
  LogosState copyWith({
    TextEditingController? searchController,
    LogosModel? shapesModelObj,
  }) {
    return LogosState(
      searchController: searchController ?? this.searchController,
      shapesModelObj: shapesModelObj ?? this.shapesModelObj,
    );
  }
}
