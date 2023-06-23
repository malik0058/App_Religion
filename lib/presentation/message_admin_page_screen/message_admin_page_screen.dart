import 'package:app_religion/core/app_export.dart';
import 'package:app_religion/presentation/blog_post_page/blog_post_page.dart';
import 'package:app_religion/presentation/chatroom_page/chatroom_page.dart';
import 'package:app_religion/presentation/validasi_data_page/validasi_data_page.dart';
import 'package:app_religion/widgets/app_bar/appbar_image.dart';
import 'package:app_religion/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:app_religion/widgets/app_bar/custom_app_bar.dart';
import 'package:app_religion/widgets/custom_bottom_bar.dart';
import 'package:app_religion/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MessageAdminPageScreen extends StatelessWidget {
  MessageAdminPageScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(52),
                leadingWidth: 17,
                leading: AppbarImage(
                    height: getVerticalSize(12),
                    width: getHorizontalSize(6),
                    svgPath: ImageConstant.imgArrowleftBlack900,
                    margin: getMargin(left: 11, top: 20, bottom: 20),
                    onTap: () {
                      onTapArrowleft3(context);
                    }),
                title:
                    AppbarSubtitle3(text: "CHAT", margin: getMargin(left: 32))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 7, right: 7),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Padding(
                      padding: getPadding(top: 58),
                      child: Text("Group chat A",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular14)),
                  Padding(
                      padding: getPadding(left: 7, top: 15, right: 12),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgUserBlack900,
                                height: getVerticalSize(21),
                                width: getHorizontalSize(26),
                                margin: getMargin(bottom: 39)),
                            Container(
                                margin: getMargin(left: 13),
                                padding: getPadding(
                                    left: 10, top: 8, right: 10, bottom: 8),
                                decoration: AppDecoration.outlineBlue600
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder5),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 4, top: 5),
                                          child: Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular9WhiteA700)),
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                              padding: getPadding(top: 8),
                                              child: Text("09.30 am",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular10)))
                                    ]))
                          ])),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: getHorizontalSize(302),
                          margin: getMargin(left: 5, top: 19, right: 54),
                          padding: getPadding(
                              left: 11, top: 8, right: 11, bottom: 8),
                          decoration: AppDecoration.outlineBlue6001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(left: 5, top: 4),
                                    child: Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipisciting elit.",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular9WhiteA700)),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: getPadding(top: 10),
                                        child: Text("10.35 am",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsRegular10)))
                              ]))),
                  Padding(
                      padding: getPadding(left: 10, top: 11, right: 12),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgUserBlack900,
                                height: getVerticalSize(21),
                                width: getHorizontalSize(26),
                                margin: getMargin(top: 1, bottom: 38)),
                            Expanded(
                                child: Container(
                                    margin: getMargin(left: 11),
                                    padding: getPadding(
                                        left: 9, top: 6, right: 9, bottom: 6),
                                    decoration: AppDecoration.outlineBlue600
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder5),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding:
                                                  getPadding(left: 12, top: 2),
                                              child: Text(
                                                  "consectur adpisciting elit.",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular9WhiteA700)),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                  padding: getPadding(top: 16),
                                                  child: Text("15.35 am",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular10)))
                                        ])))
                          ])),
                  Spacer(),
                  SizedBox(
                      height: getVerticalSize(38),
                      width: getHorizontalSize(357),
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                                padding: getPadding(right: 46),
                                child: Text("ADD TO CART",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold8))),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                margin: getMargin(top: 3),
                                padding: getPadding(
                                    left: 11, top: 4, right: 11, bottom: 4),
                                decoration: AppDecoration.outlineGray400
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder5),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: getPadding(
                                              left: 7, top: 6, bottom: 8),
                                          child: Text("Write a message...",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsSemiBold8)),
                                      Spacer(),
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgTrashGray400,
                                          height: getSize(17),
                                          width: getSize(17),
                                          margin: getMargin(top: 4, bottom: 6)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgSmile,
                                          height: getSize(17),
                                          width: getSize(17),
                                          margin: getMargin(
                                              left: 3, top: 3, bottom: 7)),
                                      CustomIconButton(
                                          height: 25,
                                          width: 25,
                                          margin: getMargin(left: 3, bottom: 2),
                                          variant:
                                              IconButtonVariant.FillBlue600,
                                          shape: IconButtonShape.RoundedBorder2,
                                          padding:
                                              IconButtonPadding.PaddingAll4,
                                          child: CustomImageView(
                                              svgPath: ImageConstant.imgSend))
                                    ])))
                      ])),
                  CustomImageView(
                      svgPath: ImageConstant.imgClose,
                      height: getVerticalSize(9),
                      width: getHorizontalSize(19),
                      margin: getMargin(top: 31),
                      onTap: () {
                        onTapImgClose(context);
                      })
                ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Homebluegray500:
        return AppRoutes.chatroomPage;
      case BottomBarEnum.Calendar:
        return "/";
      case BottomBarEnum.Close:
        return AppRoutes.validasiDataPage;
      case BottomBarEnum.Bookmark:
        return "/";
      case BottomBarEnum.Usergray500:
        return AppRoutes.blogPostPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.chatroomPage:
        return ChatroomPage();
      case AppRoutes.validasiDataPage:
        return ValidasiDataPage();
      case AppRoutes.blogPostPage:
        return BlogPostPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the gameScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the gameScreen.
  onTapImgClose(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.gameScreen);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft3(BuildContext context) {
    Navigator.pop(context);
  }
}
