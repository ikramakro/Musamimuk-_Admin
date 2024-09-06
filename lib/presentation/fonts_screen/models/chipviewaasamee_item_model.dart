import 'package:equatable/equatable.dart';

class ChipviewaasameeItemModel extends Equatable {
  ChipviewaasameeItemModel({this.aasameeralmas, this.isSelected}) {
    aasameeralmas = aasameeralmas ?? "AA Sameer Almas";
    isSelected = isSelected ?? false;
  }
  String? aasameeralmas;
  bool? isSelected;
  ChipviewaasameeItemModel copyWith({
    String? aasameeralmas,
    bool? isSelected,
  }) {
    return ChipviewaasameeItemModel(
      aasameeralmas: aasameeralmas ?? this.aasameeralmas,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [aasameeralmas, isSelected];
}
