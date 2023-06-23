import 'package:app_religion/core/app_export.dart';
import 'package:app_religion/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BerandaItemWidget extends StatelessWidget {
  const BerandaItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: getVerticalSize(
          149,
        ),
        width: getHorizontalSize(
          114,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle7,
              height: getVerticalSize(
                149,
              ),
              width: getHorizontalSize(
                114,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  9,
                ),
              ),
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: getPadding(
                  all: 5,
                ),
                decoration: AppDecoration.gradientBlack90059Gray90059.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder9,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        35,
                      ),
                      margin: getMargin(
                        left: 2,
                        top: 86,
                      ),
                      padding: getPadding(
                        left: 7,
                        top: 1,
                        right: 7,
                        bottom: 1,
                      ),
                      decoration: AppDecoration.txtFillGray400d8.copyWith(
                        borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                      ),
                      child: Text(
                        "",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsSemiBold6,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 2,
                        top: 3,
                      ),
                      child: Text(
                        "",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsSemiBold9,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 2,
                        top: 3,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 8,
                            ),
                            child: Text(
                              "",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold7,
                            ),
                          ),
                          CustomIconButton(
                            height: 20,
                            width: 20,
                            margin: getMargin(
                              left: 51,
                            ),
                            variant: IconButtonVariant.FillIndigo50d8,
                            shape: IconButtonShape.CircleBorder10,
                            padding: IconButtonPadding.PaddingAll4,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgPlusBlueGray600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
