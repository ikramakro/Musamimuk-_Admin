part of 'revenue_bloc.dart';

class RevenueState extends Equatable {
  RevenueState({this.assetsEditTextController, this.revenueModelObj});
  TextEditingController? assetsEditTextController;
  RevenueModel? revenueModelObj;
  @override
  List<Object?> get props => [assetsEditTextController, revenueModelObj];
  RevenueState copyWith({
    TextEditingController? assetsEditTextController,
    RevenueModel? revenueModelObj,
  }) {
    return RevenueState(
      assetsEditTextController:
          assetsEditTextController ?? this.assetsEditTextController,
      revenueModelObj: revenueModelObj ?? this.revenueModelObj,
    );
  }
}
