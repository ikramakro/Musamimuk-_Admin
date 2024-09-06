import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'chipviewview_item_model.dart';
import 'userprofile_item_model.dart';

class OnlineDesignsModel extends Equatable {
  OnlineDesignsModel(
      {this.userprofileItemList = const [],
      this.chipviewviewItemList = const []});
  List<UserprofileItemModel> userprofileItemList;
  List<ChipviewviewItemModel> chipviewviewItemList;
  OnlineDesignsModel copyWith({
    List<UserprofileItemModel>? userprofileItemList,
    List<ChipviewviewItemModel>? chipviewviewItemList,
  }) {
    return OnlineDesignsModel(
      userprofileItemList: userprofileItemList ?? this.userprofileItemList,
      chipviewviewItemList: chipviewviewItemList ?? this.chipviewviewItemList,
    );
  }

  @override
  List<Object?> get props => [userprofileItemList, chipviewviewItemList];
}
