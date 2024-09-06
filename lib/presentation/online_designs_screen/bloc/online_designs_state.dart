part of 'online_designs_bloc.dart';

class OnlineDesignsState extends Equatable {
  OnlineDesignsState({this.searchController, this.shapesModelObj});
  TextEditingController? searchController;
  OnlineDesignsModel? shapesModelObj;
  @override
  List<Object?> get props => [searchController, shapesModelObj];
  OnlineDesignsState copyWith({
    TextEditingController? searchController,
    OnlineDesignsModel? shapesModelObj,
  }) {
    return OnlineDesignsState(
      searchController: searchController ?? this.searchController,
      shapesModelObj: shapesModelObj ?? this.shapesModelObj,
    );
  }
}
