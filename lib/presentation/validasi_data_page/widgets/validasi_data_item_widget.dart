import 'package:app_religion/core/app_export.dart';
import 'package:app_religion/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ValidasiDataItemWidget extends StatelessWidget {
  const ValidasiDataItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomIconButton(
          height: 40,
          width: 40,
          child: CustomImageView(
            svgPath: ImageConstant.imgCreditcard,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 22,
            top: 14,
            bottom: 7,
          ),
          child: Text(
            "",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtMontserratMedium14,
          ),
        ),
        Spacer(),
        CustomImageView(
          svgPath: ImageConstant.imgVectorBlack90001,
          height: getVerticalSize(
            10,
          ),
          width: getHorizontalSize(
            5,
          ),
          margin: getMargin(
            top: 17,
            bottom: 13,
          ),
        ),
      ],
    );
  }
}
