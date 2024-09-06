import 'package:equatable/equatable.dart';
import 'chipviewview_item_model.dart';
import 'userprofile_item_model.dart';

class LogosModel extends Equatable {
  LogosModel(
      {this.userprofileItemList = const [],
      this.chipviewviewItemList = const []});
  List<UserprofileItemModel> userprofileItemList;
  List<ChipviewviewItemModel> chipviewviewItemList;
  LogosModel copyWith({
    List<UserprofileItemModel>? userprofileItemList,
    List<ChipviewviewItemModel>? chipviewviewItemList,
  }) {
    return LogosModel(
      userprofileItemList: userprofileItemList ?? this.userprofileItemList,
      chipviewviewItemList: chipviewviewItemList ?? this.chipviewviewItemList,
    );
  }

  @override
  List<Object?> get props => [userprofileItemList, chipviewviewItemList];
}
