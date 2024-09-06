part of 'asessts_bloc.dart';

class AsesstsState extends Equatable {
  AsesstsState({this.assetsvalueoneController, this.asesstsModelObj});
  TextEditingController? assetsvalueoneController;
  AsesstsModel? asesstsModelObj;
  @override
  List<Object?> get props => [assetsvalueoneController, asesstsModelObj];
  AsesstsState copyWith({
    TextEditingController? assetsvalueoneController,
    AsesstsModel? asesstsModelObj,
  }) {
    return AsesstsState(
      assetsvalueoneController:
          assetsvalueoneController ?? this.assetsvalueoneController,
      asesstsModelObj: asesstsModelObj ?? this.asesstsModelObj,
    );
  }
}
