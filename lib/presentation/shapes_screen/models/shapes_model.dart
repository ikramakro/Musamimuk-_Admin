import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'chipviewview_item_model.dart';
import 'userprofile_item_model.dart';

class ShapesModel extends Equatable {
  ShapesModel(
      {this.userprofileItemList = const [],
      this.chipviewviewItemList = const []});
  List<UserprofileItemModel> userprofileItemList;
  List<ChipviewviewItemModel> chipviewviewItemList;
  ShapesModel copyWith({
    List<UserprofileItemModel>? userprofileItemList,
    List<ChipviewviewItemModel>? chipviewviewItemList,
  }) {
    return ShapesModel(
      userprofileItemList: userprofileItemList ?? this.userprofileItemList,
      chipviewviewItemList: chipviewviewItemList ?? this.chipviewviewItemList,
    );
  }

  @override
  List<Object?> get props => [userprofileItemList, chipviewviewItemList];
}
