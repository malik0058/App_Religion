import 'package:app_religion/core/app_export.dart';
import 'package:app_religion/presentation/blog_post_page/blog_post_page.dart';
import 'package:app_religion/presentation/chatroom_page/chatroom_page.dart';
import 'package:app_religion/presentation/validasi_data_page/validasi_data_page.dart';
import 'package:app_religion/widgets/app_bar/appbar_image.dart';
import 'package:app_religion/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:app_religion/widgets/app_bar/custom_app_bar.dart';
import 'package:app_religion/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HafalanScreen extends StatelessWidget {
  HafalanScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(52),
                leadingWidth: 39,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 15, top: 14, bottom: 14),
                    onTap: () {
                      onTapArrowleft4(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Hafalan")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 33, right: 33),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () {
                            onTapColumnalquran(context);
                          },
                          child: Container(
                              width: getHorizontalSize(301),
                              margin: getMargin(left: 3, top: 18, right: 5),
                              padding: getPadding(
                                  left: 24, top: 8, right: 24, bottom: 8),
                              decoration: AppDecoration.fillBluegray100
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder35),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Text("Al-Quran",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtMontserratBold15)),
                                    Padding(
                                        padding:
                                            getPadding(top: 42, bottom: 58),
                                        child: Text("Ar-rahman",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtMontserratBold15))
                                  ]))),
                      Container(
                          width: getHorizontalSize(301),
                          margin: getMargin(left: 2, top: 32, right: 6),
                          padding: getPadding(
                              left: 34, top: 13, right: 34, bottom: 13),
                          decoration: AppDecoration.fillBluegray100.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder35),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Text("Al-Quran",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMontserratBold15)),
                                Padding(
                                    padding: getPadding(top: 33, bottom: 58),
                                    child: Text("Al-ikhlas",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMontserratBold15))
                              ])),
                      Container(
                          width: getHorizontalSize(301),
                          margin: getMargin(top: 32, right: 8),
                          padding: getPadding(
                              left: 39, top: 13, right: 39, bottom: 13),
                          decoration: AppDecoration.fillBluegray100.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder35),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Text("Al-Quran",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMontserratBold15)),
                                Padding(
                                    padding: getPadding(top: 32, bottom: 59),
                                    child: Text("Surat Al-Falaq",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMontserratBold15))
                              ])),
                      Spacer(),
                      CustomImageView(
                          svgPath: ImageConstant.imgTrash,
                          height: getVerticalSize(20),
                          width: getHorizontalSize(18),
                          margin: getMargin(left: 69))
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

  /// Navigates to the alQuranScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the alQuranScreen.
  onTapColumnalquran(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.alQuranScreen);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }
}
