import 'package:app_religion/core/app_export.dart';
import 'package:app_religion/presentation/blog_post_page/blog_post_page.dart';
import 'package:app_religion/presentation/chatroom_page/chatroom_page.dart';
import 'package:app_religion/presentation/validasi_data_page/validasi_data_page.dart';
import 'package:app_religion/widgets/app_bar/appbar_image.dart';
import 'package:app_religion/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:app_religion/widgets/app_bar/custom_app_bar.dart';
import 'package:app_religion/widgets/custom_bottom_bar.dart';
import 'package:app_religion/widgets/custom_icon_button.dart';
import 'package:app_religion/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SholatOneScreen extends StatelessWidget {
  SholatOneScreen({Key? key}) : super(key: key);

  TextEditingController subuhController = TextEditingController();

  TextEditingController dhuhurController = TextEditingController();

  TextEditingController asharController = TextEditingController();

  TextEditingController maghribController = TextEditingController();

  TextEditingController isyaController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(52),
                leadingWidth: 39,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 15, top: 14, bottom: 14),
                    onTap: () {
                      onTapArrowleft8(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Sholat Wajib")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 27, right: 27),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: subuhController,
                          hintText: "Subuh",
                          margin: getMargin(left: 13, top: 10, right: 1)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: dhuhurController,
                          hintText: "Dhuhur",
                          margin: getMargin(left: 13, top: 11, right: 1)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: asharController,
                          hintText: "Ashar",
                          margin: getMargin(left: 14, top: 11)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: maghribController,
                          hintText: "Maghrib",
                          margin: getMargin(left: 14, top: 10)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: isyaController,
                          hintText: "Isya’",
                          margin: getMargin(left: 13, top: 11, right: 1),
                          textInputAction: TextInputAction.done),
                      Spacer(),
                      Padding(
                          padding: getPadding(left: 64),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomIconButton(
                                    height: 40,
                                    width: 40,
                                    onTap: () {
                                      onTapBtnTrash(context);
                                    },
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgTrash)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgClose,
                                    height: getVerticalSize(9),
                                    width: getHorizontalSize(19),
                                    margin: getMargin(
                                        left: 47, top: 13, bottom: 17),
                                    onTap: () {
                                      onTapImgClose(context);
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
  onTapBtnTrash(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.materiScreen);
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
  onTapArrowleft8(BuildContext context) {
    Navigator.pop(context);
  }
}
