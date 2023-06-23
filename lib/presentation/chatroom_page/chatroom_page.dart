import '../chatroom_page/widgets/chatroom_item_widget.dart';
import 'package:app_religion/core/app_export.dart';
import 'package:app_religion/widgets/app_bar/appbar_image.dart';
import 'package:app_religion/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:app_religion/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ChatroomPage extends StatelessWidget {
  const ChatroomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(87),
                leadingWidth: 17,
                leading: AppbarImage(
                    height: getVerticalSize(12),
                    width: getHorizontalSize(6),
                    svgPath: ImageConstant.imgArrowleftBlack900,
                    margin: getMargin(left: 11, top: 4, bottom: 70),
                    onTap: () {
                      onTapArrowleft2(context);
                    }),
                title: Padding(
                    padding: getPadding(left: 32),
                    child: Row(children: [
                      AppbarSubtitle3(
                          text: "CHAT", margin: getMargin(bottom: 65)),
                      AppbarImage(
                          height: getVerticalSize(70),
                          width: getHorizontalSize(72),
                          svgPath: ImageConstant.imgVector,
                          margin: getMargin(left: 69, top: 16))
                    ]))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(all: 11),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Username",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular14),
                      Padding(
                          padding: getPadding(top: 16, right: 8),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(12));
                              },
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return ChatroomItemWidget(
                                    onTapRowellipse113: () {
                                  onTapRowellipse113(context);
                                });
                              })),
                      Spacer(),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(right: 42, bottom: 25),
                              child: Text("ADD TO CART",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold8)))
                    ]))));
  }

  /// Navigates to the messageAdminPageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the messageAdminPageScreen.
  onTapRowellipse113(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.messageAdminPageScreen);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}
