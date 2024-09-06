import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'chipviewaasamee_item_model.dart';
import 'userprofile_item_model.dart';

class FontsModel extends Equatable {
  FontsModel(
      {this.useractionsgridItemList = const [],
      this.chipviewaasameeItemList = const []});
  List<UseractionsgridItemModel> useractionsgridItemList;
  List<ChipviewaasameeItemModel> chipviewaasameeItemList;
  FontsModel copyWith({
    List<UseractionsgridItemModel>? useractionsgridItemList,
    List<ChipviewaasameeItemModel>? chipviewaasameeItemList,
  }) {
    return FontsModel(
      useractionsgridItemList:
          useractionsgridItemList ?? this.useractionsgridItemList,
      chipviewaasameeItemList:
          chipviewaasameeItemList ?? this.chipviewaasameeItemList,
    );
  }

  @override
  List<Object?> get props => [useractionsgridItemList, chipviewaasameeItemList];
}
