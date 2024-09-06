import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/userprofile_item_model.dart';

class UseractionsgridItemWidget extends StatelessWidget {
  UseractionsgridItemWidget(this.useractionsgridItemModelObj, {Key? key})
      : super(
          key: key,
        );
  UseractionsgridItemModel useractionsgridItemModelObj;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.h,
      height: 200,
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.outlineBlack9002,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 4.v),
              child: Text(
                useractionsgridItemModelObj.username!,
                style: CustomTextStyles.aBeeZeeWhiteA700,
              ),
            ),
            Row(
              children: [
                Container(
                  height: 15.v,
                  width: 20.h,
                  margin: EdgeInsets.only(
                    left: 5.h,
                    top: 2.v,
                  ),
                  decoration: AppDecoration.fillGreen.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Center(
                    child: Text(
                      useractionsgridItemModelObj.viewText!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallCorben,
                    ),
                  ),
                ),
                Container(
                  height: 15.v,
                  width: 20.h,
                  margin: EdgeInsets.only(
                    left: 5.h,
                    top: 2.v,
                  ),
                  decoration: AppDecoration.fillBlue700.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Center(
                    child: Text(
                      useractionsgridItemModelObj.editText!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallCorben,
                    ),
                  ),
                ),
                Container(
                  height: 15.v,
                  width: 25.h,
                  margin: EdgeInsets.only(
                    left: 5.h,
                    top: 2.v,
                  ),
                  decoration: AppDecoration.fillRed900.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Center(
                    child: Text(
                      useractionsgridItemModelObj.deleteText!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallCorben,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
