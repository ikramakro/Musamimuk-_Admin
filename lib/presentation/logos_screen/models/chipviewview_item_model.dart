import 'package:equatable/equatable.dart';

class ChipviewviewItemModel extends Equatable {
  ChipviewviewItemModel({this.view, this.isSelected}) {
    view = view ?? "View";
    isSelected = isSelected ?? false;
  }
  String? view;
  bool? isSelected;
  ChipviewviewItemModel copyWith({
    String? view,
    bool? isSelected,
  }) {
    return ChipviewviewItemModel(
      view: view ?? this.view,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [view, isSelected];
}
