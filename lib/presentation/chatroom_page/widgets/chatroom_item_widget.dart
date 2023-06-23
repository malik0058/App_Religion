import 'package:app_religion/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChatroomItemWidget extends StatelessWidget {
  ChatroomItemWidget({
    Key? key,
    this.onTapRowellipse113,
  }) : super(
          key: key,
        );

  VoidCallback? onTapRowellipse113;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapRowellipse113?.call();
      },
      child: Container(
        padding: getPadding(
          left: 12,
          top: 5,
          right: 12,
          bottom: 5,
        ),
        decoration: AppDecoration.fillGray90001,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: getVerticalSize(
                34,
              ),
              width: getHorizontalSize(
                38,
              ),
              margin: getMargin(
                bottom: 1,
              ),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: getVerticalSize(
                        34,
                      ),
                      width: getHorizontalSize(
                        38,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.blueGray100,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            19,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 9,
                      ),
                      child: Text(
                        "",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular6,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 24,
                top: 6,
                bottom: 7,
              ),
              child: Text(
                "",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsRegular14WhiteA700,
              ),
            ),
            Spacer(),
            Padding(
              padding: getPadding(
                top: 5,
                right: 2,
                bottom: 14,
              ),
              child: Text(
                "",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsRegular10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
