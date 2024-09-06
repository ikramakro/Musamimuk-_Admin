import '../../../core/app_export.dart';
import '../models/chipviewview_item_model.dart';

class ChipviewviewItemWidget extends StatelessWidget {
  ChipviewviewItemWidget(this.chipviewviewItemModelObj,
      {Key? key, this.onSelectedChipView})
      : super(
          key: key,
        );
  ChipviewviewItemModel chipviewviewItemModelObj;
  Function(bool)? onSelectedChipView;
  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 2.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        chipviewviewItemModelObj.view!,
        style: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 8.518104553222656.fSize,
          fontFamily: 'Kinetika',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (chipviewviewItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.green500,
      selectedColor: appTheme.red900,
      shape: (chipviewviewItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                8.h,
              ))
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
