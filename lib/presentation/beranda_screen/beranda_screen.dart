import '../beranda_screen/widgets/beranda_item_widget.dart';
import 'package:app_religion/core/app_export.dart';
import 'package:app_religion/presentation/blog_post_page/blog_post_page.dart';
import 'package:app_religion/presentation/chatroom_page/chatroom_page.dart';
import 'package:app_religion/presentation/validasi_data_page/validasi_data_page.dart';
import 'package:app_religion/widgets/app_bar/appbar_image.dart';
import 'package:app_religion/widgets/app_bar/custom_app_bar.dart';
import 'package:app_religion/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// ignore_for_file: must_be_immutable
class BerandaScreen extends StatelessWidget {
  BerandaScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(41),
                leadingWidth: 37,
                leading: AppbarImage(
                    height: getVerticalSize(24),
                    width: getHorizontalSize(22),
                    svgPath: ImageConstant.imgAlignjustify,
                    margin: getMargin(left: 15, top: 9, bottom: 8)),
                centerTitle: true,
                title: Text("RELIGION LEARN",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratBold16)),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(left: 57, top: 24, right: 56),
                          padding: getPadding(
                              left: 16, top: 3, right: 16, bottom: 3),
                          decoration: AppDecoration.fillGray100.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder12),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                    padding: getPadding(left: 60, top: 3),
                                    child: Text("What are you looking for ?",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular9)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgSearch,
                                    height: getSize(12),
                                    width: getSize(12),
                                    margin:
                                        getMargin(left: 48, top: 2, bottom: 2))
                              ])),
                      Padding(
                          padding: getPadding(left: 48, top: 18, right: 40),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    width: getHorizontalSize(105),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                    height: getVerticalSize(38),
                                                    width:
                                                        getHorizontalSize(42),
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child:
                                                                  GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        onTapEllipsetwo(
                                                                            context);
                                                                      },
                                                                      child: Container(
                                                                          height: getVerticalSize(
                                                                              38),
                                                                          width: getHorizontalSize(
                                                                              42),
                                                                          decoration: BoxDecoration(
                                                                              color: ColorConstant.blueGray50,
                                                                              borderRadius: BorderRadius.circular(getHorizontalSize(21)))))),
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgCalendareditoutline,
                                                              height:
                                                                  getSize(24),
                                                              width:
                                                                  getSize(24),
                                                              alignment:
                                                                  Alignment
                                                                      .center)
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 10),
                                                    child: Text("Materi",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsMedium8))
                                              ]),
                                          Padding(
                                              padding: getPadding(left: 21),
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                        height:
                                                            getVerticalSize(38),
                                                        width:
                                                            getHorizontalSize(
                                                                42),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child:
                                                                      GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            onTapEllipsethree(context);
                                                                          },
                                                                          child: Container(
                                                                              height: getVerticalSize(38),
                                                                              width: getHorizontalSize(42),
                                                                              decoration: BoxDecoration(color: ColorConstant.blueGray50, borderRadius: BorderRadius.circular(getHorizontalSize(21)))))),
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgMusic,
                                                                  height:
                                                                      getVerticalSize(
                                                                          17),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          19),
                                                                  alignment:
                                                                      Alignment
                                                                          .center)
                                                            ])),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 11),
                                                        child: Text("Chatroom",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsMedium8))
                                                  ]))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 20),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                              height: getVerticalSize(38),
                                              width: getHorizontalSize(42),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: GestureDetector(
                                                            onTap: () {
                                                              onTapEllipsefour(
                                                                  context);
                                                            },
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        38),
                                                                width:
                                                                    getHorizontalSize(
                                                                        42),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .blueGray50,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            getHorizontalSize(21)))))),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgCar,
                                                        height:
                                                            getVerticalSize(9),
                                                        width:
                                                            getHorizontalSize(
                                                                19),
                                                        alignment:
                                                            Alignment.center)
                                                  ])),
                                          Padding(
                                              padding: getPadding(top: 11),
                                              child: Text("Games",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium8))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 16, bottom: 1),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                              height: getVerticalSize(38),
                                              width: getHorizontalSize(42),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: GestureDetector(
                                                            onTap: () {
                                                              onTapEllipsefive(
                                                                  context);
                                                            },
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        38),
                                                                width:
                                                                    getHorizontalSize(
                                                                        42),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .blueGray50,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            getHorizontalSize(21)))))),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgVectorBlack900,
                                                        height:
                                                            getVerticalSize(20),
                                                        width:
                                                            getHorizontalSize(
                                                                24),
                                                        alignment:
                                                            Alignment.topCenter,
                                                        margin:
                                                            getMargin(top: 7))
                                                  ])),
                                          Padding(
                                              padding: getPadding(top: 9),
                                              child: Text("Hafalan",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium8))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 17),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                              height: getVerticalSize(38),
                                              width: getHorizontalSize(42),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    38),
                                                            width:
                                                                getHorizontalSize(
                                                                    42),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .blueGray50,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(21))))),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgBookmarkBlack900,
                                                        height:
                                                            getVerticalSize(20),
                                                        width:
                                                            getHorizontalSize(
                                                                16),
                                                        alignment:
                                                            Alignment.center)
                                                  ])),
                                          Padding(
                                              padding: getPadding(top: 10),
                                              child: Text("Literasi",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium8))
                                        ]))
                              ])),
                      Container(
                          height: getVerticalSize(629),
                          width: getHorizontalSize(366),
                          margin: getMargin(top: 26),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    width: getHorizontalSize(44),
                                    margin: getMargin(top: 1),
                                    child: Text("Latest deals",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium15))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: getPadding(top: 190),
                                    child: Text("Feed",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium15))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: getPadding(bottom: 151),
                                    child: Text("New",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium15))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                    padding: getPadding(right: 14),
                                    child: Text("View all",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium9))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                    padding: getPadding(right: 13, bottom: 108),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            Padding(
                                                padding: getPadding(
                                                    top: 168, bottom: 98),
                                                child: Text("Lagos",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium8WhiteA700)),
                                            Padding(
                                                padding: getPadding(left: 165),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("View all",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium9),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 251),
                                                          child: Text(
                                                              "View all",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsMedium9))
                                                    ]))
                                          ]),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgCloseGray500,
                                              height: getVerticalSize(9),
                                              width: getHorizontalSize(19),
                                              margin:
                                                  getMargin(left: 31, top: 35),
                                              onTap: () {
                                                onTapImgClose(context);
                                              })
                                        ]))),
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse8,
                                height: getSize(20),
                                width: getSize(20),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(10)),
                                alignment: Alignment.topLeft,
                                margin: getMargin(left: 11, top: 51)),
                            StaggeredGridView.countBuilder(
                                shrinkWrap: true,
                                primary: false,
                                crossAxisCount: 10,
                                crossAxisSpacing: getHorizontalSize(12),
                                mainAxisSpacing: getHorizontalSize(12),
                                staggeredTileBuilder: (index) {
                                  return StaggeredTile.fit(2);
                                },
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return BerandaItemWidget();
                                })
                          ]))
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

  /// Navigates to the materiScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the materiScreen.
  onTapEllipsetwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.materiScreen);
  }

  /// Navigates to the chatroomContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the chatroomContainerScreen.
  onTapEllipsethree(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chatroomContainerScreen);
  }

  /// Navigates to the gameScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the gameScreen.
  onTapEllipsefour(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.gameScreen);
  }

  /// Navigates to the hafalanScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the hafalanScreen.
  onTapEllipsefive(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.hafalanScreen);
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
