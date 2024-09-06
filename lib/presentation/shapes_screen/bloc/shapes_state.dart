part of 'shapes_bloc.dart';

class ShapesState extends Equatable {
  ShapesState({this.searchController, this.shapesModelObj});
  TextEditingController? searchController;
  ShapesModel? shapesModelObj;
  @override
  List<Object?> get props => [searchController, shapesModelObj];
  ShapesState copyWith({
    TextEditingController? searchController,
    ShapesModel? shapesModelObj,
  }) {
    return ShapesState(
      searchController: searchController ?? this.searchController,
      shapesModelObj: shapesModelObj ?? this.shapesModelObj,
    );
  }
}
