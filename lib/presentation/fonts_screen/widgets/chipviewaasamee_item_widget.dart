import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/chipviewaasamee_item_model.dart';

class ChipviewaasameeItemWidget extends StatelessWidget {
  ChipviewaasameeItemWidget(this.chipviewaasameeItemModelObj,
      {Key? key, this.onSelectedChipView})
      : super(
          key: key,
        );
  ChipviewaasameeItemModel chipviewaasameeItemModelObj;
  Function(bool)? onSelectedChipView;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          chipviewaasameeItemModelObj.aasameeralmas!,
          style: TextStyle(
            color: appTheme.whiteA700,
            fontSize: 7.fSize,
            fontFamily: 'ABeeZee',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: (chipviewaasameeItemModelObj.isSelected ?? false),
        backgroundColor: Colors.transparent,
        selectedColor: Colors.transparent,
        onSelected: (value) {
          onSelectedChipView?.call(value);
        },
      ),
    );
  }
}
