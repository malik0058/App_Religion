import 'package:app_religion/core/app_export.dart';
import 'package:app_religion/presentation/blog_post_page/blog_post_page.dart';
import 'package:app_religion/presentation/chatroom_page/chatroom_page.dart';
import 'package:app_religion/presentation/validasi_data_page/validasi_data_page.dart';
import 'package:app_religion/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PilihanGandaScreen extends StatelessWidget {
  PilihanGandaScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 15, right: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 14, right: 31),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowleft,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(bottom: 145),
                                    onTap: () {
                                      onTapImgArrowleft(context);
                                    }),
                                Expanded(
                                    child: Padding(
                                        padding: getPadding(left: 12, top: 3),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Text("Pilihan Ganda",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratBold15)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 82, top: 44),
                                                  child: Text("Tentang Nabi",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratBold15Orange800)),
                                              Padding(
                                                  padding: getPadding(top: 63),
                                                  child: Text(
                                                      "Siapakah Nabi terakhir dalam islam?",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratBold15Orange800))
                                            ])))
                              ])),
                      Padding(
                          padding: getPadding(left: 37, top: 16),
                          child: Row(children: [
                            Container(
                                width: getSize(23),
                                padding: getPadding(
                                    left: 5, top: 1, right: 5, bottom: 1),
                                decoration: AppDecoration.txtFillBluegray100
                                    .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtRoundedBorder11),
                                child: Text("A",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratBold15)),
                            Container(
                                width: getHorizontalSize(199),
                                margin: getMargin(left: 13, bottom: 3),
                                padding: getPadding(
                                    left: 10, top: 1, right: 10, bottom: 1),
                                decoration: AppDecoration.txtFillBluegray100
                                    .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtRoundedBorder11),
                                child: Text("Nabi Yusuf as ",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratBold15))
                          ])),
                      Padding(
                          padding: getPadding(left: 37, top: 7),
                          child: Row(children: [
                            Container(
                                width: getSize(23),
                                padding: getPadding(
                                    left: 5, top: 1, right: 5, bottom: 1),
                                decoration: AppDecoration.txtFillBluegray100
                                    .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtRoundedBorder11),
                                child: Text("B",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratBold15)),
                            Container(
                                height: getVerticalSize(20),
                                width: getHorizontalSize(199),
                                margin: getMargin(left: 13, bottom: 3),
                                child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              height: getVerticalSize(20),
                                              width: getHorizontalSize(199),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.blueGray100,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              10))))),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                              padding: getPadding(left: 10),
                                              child: Text("Nabi Ibrahim as ",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratBold15)))
                                    ]))
                          ])),
                      Padding(
                          padding: getPadding(left: 37, top: 8),
                          child: Row(children: [
                            Container(
                                width: getSize(23),
                                padding: getPadding(
                                    left: 5, top: 1, right: 5, bottom: 1),
                                decoration: AppDecoration.txtFillBluegray100
                                    .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtRoundedBorder11),
                                child: Text("C",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratBold15)),
                            Container(
                                width: getHorizontalSize(199),
                                margin: getMargin(left: 13, bottom: 3),
                                padding: getPadding(
                                    left: 10, top: 1, right: 10, bottom: 1),
                                decoration: AppDecoration.txtFillBluegray100
                                    .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtRoundedBorder11),
                                child: Text("Nabi Muhammad saw ",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratBold15))
                          ])),
                      Spacer(),
                      CustomImageView(
                          svgPath: ImageConstant.imgClose,
                          height: getVerticalSize(9),
                          width: getHorizontalSize(19),
                          alignment: Alignment.center,
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

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the gameScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the gameScreen.
  onTapImgClose(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.gameScreen);
  }
}
