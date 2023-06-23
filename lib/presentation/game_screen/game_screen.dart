import 'package:app_religion/core/app_export.dart';
import 'package:app_religion/presentation/blog_post_page/blog_post_page.dart';
import 'package:app_religion/presentation/chatroom_page/chatroom_page.dart';
import 'package:app_religion/presentation/validasi_data_page/validasi_data_page.dart';
import 'package:app_religion/widgets/app_bar/appbar_image.dart';
import 'package:app_religion/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:app_religion/widgets/app_bar/custom_app_bar.dart';
import 'package:app_religion/widgets/custom_bottom_bar.dart';
import 'package:app_religion/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class GameScreen extends StatelessWidget {
  GameScreen({Key? key}) : super(key: key);

  TextEditingController tentangnabiController = TextEditingController();

  TextEditingController tentangalquranController = TextEditingController();

  TextEditingController tentangramadhanController = TextEditingController();

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
                      onTapArrowleft9(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Game")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 28, right: 28),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  CustomTextFormField(
                      focusNode: FocusNode(),
                      autofocus: true,
                      controller: tentangnabiController,
                      hintText: "Tentang Nabi",
                      margin: getMargin(left: 12, top: 63)),
                  CustomTextFormField(
                      focusNode: FocusNode(),
                      autofocus: true,
                      controller: tentangalquranController,
                      hintText: "Tentang Al-Quran",
                      margin: getMargin(left: 11, top: 19, right: 1)),
                  CustomTextFormField(
                      focusNode: FocusNode(),
                      autofocus: true,
                      controller: tentangramadhanController,
                      hintText: "Tentang Ramadhan",
                      margin: getMargin(left: 11, top: 19, right: 1),
                      textInputAction: TextInputAction.done),
                  Spacer(),
                  CustomImageView(
                      svgPath: ImageConstant.imgClose,
                      height: getVerticalSize(9),
                      width: getHorizontalSize(19))
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
  onTapArrowleft9(BuildContext context) {
    Navigator.pop(context);
  }
}
