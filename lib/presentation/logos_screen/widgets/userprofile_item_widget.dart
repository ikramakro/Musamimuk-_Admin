import '../../../core/app_export.dart';
import '../models/userprofile_item_model.dart';

class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(this.userprofileItemModelObj,
      {super.key, this.onTapTxtDelete, this.onTapTxtEdit, this.onTapTxtView});
  UserprofileItemModel userprofileItemModelObj;
  VoidCallback? onTapTxtDelete;
  VoidCallback? onTapTxtView;
  VoidCallback? onTapTxtEdit;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      // padding: EdgeInsets.all(17.h),
      decoration: AppDecoration.outlineBlack9002,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // SizedBox(height: 6.v),
          Container(
            height: 60.v,
            width: 46.h,
            decoration: BoxDecoration(
              color: appTheme.red70001,
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            ),
          ),
          SizedBox(height: 10.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    onTapTxtView?.call();
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 4.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.fillGreen.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder8,
                    ),
                    child: Text(
                      userprofileItemModelObj.viewOne!,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
                SizedBox(width: 4.h),
                GestureDetector(
                  onTap: () {
                    onTapTxtEdit?.call();
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.fillBlue700.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder8,
                    ),
                    child: Text(
                      userprofileItemModelObj.edit!,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
                SizedBox(width: 4.h),
                GestureDetector(
                  onTap: () {
                    onTapTxtDelete?.call();
                  },
                  child: Container(
                    padding: EdgeInsets.all(2.h),
                    decoration: AppDecoration.fillRed900.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder8,
                    ),
                    child: Text(
                      userprofileItemModelObj.delete!,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
