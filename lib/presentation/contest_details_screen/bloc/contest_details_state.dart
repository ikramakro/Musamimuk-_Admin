part of 'contest_details_bloc.dart';

class ContestDetailsState extends Equatable {
  ContestDetailsState({this.searchController, this.contestDetailsModelObj});
  TextEditingController? searchController;
  ContestDetailsModel? contestDetailsModelObj;
  @override
  List<Object?> get props => [searchController, contestDetailsModelObj];
  ContestDetailsState copyWith({
    TextEditingController? searchController,
    ContestDetailsModel? contestDetailsModelObj,
  }) {
    return ContestDetailsState(
      searchController: searchController ?? this.searchController,
      contestDetailsModelObj:
          contestDetailsModelObj ?? this.contestDetailsModelObj,
    );
  }
}
