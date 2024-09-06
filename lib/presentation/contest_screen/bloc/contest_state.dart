part of 'contest_bloc.dart';

class ContestState extends Equatable {
  ContestState({this.searchController, this.contestModelObj});
  TextEditingController? searchController;
  ContestModel? contestModelObj;
  @override
  List<Object?> get props => [searchController, contestModelObj];
  ContestState copyWith({
    TextEditingController? searchController,
    ContestModel? contestModelObj,
  }) {
    return ContestState(
      searchController: searchController ?? this.searchController,
      contestModelObj: contestModelObj ?? this.contestModelObj,
    );
  }
}
