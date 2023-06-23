import 'package:app_religion/core/app_export.dart';
import 'package:app_religion/presentation/blog_post_page/blog_post_page.dart';
import 'package:app_religion/presentation/chatroom_page/chatroom_page.dart';
import 'package:app_religion/presentation/validasi_data_page/validasi_data_page.dart';
import 'package:app_religion/widgets/app_bar/appbar_subtitle.dart';
import 'package:app_religion/widgets/app_bar/custom_app_bar.dart';
import 'package:app_religion/widgets/custom_bottom_bar.dart';
import 'package:app_religion/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

// ignore_for_file: must_be_immutable
class MateriScreen extends StatelessWidget {
  MateriScreen({Key? key}) : super(key: key);

  TextEditingController blessingController = TextEditingController();

  TextEditingController ramadanblessingController = TextEditingController();

  TextEditingController charitableblessController = TextEditingController();

  TextEditingController memorizationController = TextEditingController();

  TextEditingController prayerController = TextEditingController();

  TextEditingController pillarController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                title: Padding(
                    padding: getPadding(left: 16),
                    child: Row(children: [
                      AppbarSubtitle(
                          text: "Back",
                          margin: getMargin(top: 8, bottom: 8),
                          onTap: () {
                            onTapBack(context);
                          }),
                      Padding(
                          padding: getPadding(left: 88),
                          child: Text("Materi",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold30))
                    ])),
                actions: [
                  AppbarSubtitle(
                      text: "Filter",
                      margin:
                          getMargin(left: 16, top: 17, right: 16, bottom: 18))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 22),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              autofocus: true,
                              controller: blessingController,
                              hintText: "Berkah",
                              margin: getMargin(left: 16, right: 16),
                              variant: TextFormFieldVariant.OutlineGray200,
                              shape: TextFormFieldShape.CircleBorder25,
                              padding: TextFormFieldPadding.PaddingAll15,
                              fontStyle: TextFormFieldFontStyle.InterMedium16),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              autofocus: true,
                              controller: ramadanblessingController,
                              hintText: "Berkah di bulan Ramadhan",
                              margin: getMargin(left: 33, top: 31, right: 16),
                              variant: TextFormFieldVariant.UnderLineGray200,
                              fontStyle: TextFormFieldFontStyle.InterMedium16),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              autofocus: true,
                              controller: charitableblessController,
                              hintText: "Berkah beramal",
                              margin: getMargin(left: 33, top: 14, right: 16),
                              variant: TextFormFieldVariant.UnderLineGray200,
                              fontStyle: TextFormFieldFontStyle.InterMedium16),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              autofocus: true,
                              controller: memorizationController,
                              hintText: "Hafalan",
                              margin: getMargin(left: 33, top: 14, right: 16),
                              variant: TextFormFieldVariant.UnderLineGray200,
                              fontStyle: TextFormFieldFontStyle.InterMedium16),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              autofocus: true,
                              controller: prayerController,
                              hintText: "Sholat",
                              margin: getMargin(left: 32, top: 14, right: 17),
                              variant: TextFormFieldVariant.UnderLineGray200,
                              fontStyle: TextFormFieldFontStyle.InterMedium16),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              autofocus: true,
                              controller: pillarController,
                              hintText: "Rukun",
                              margin: getMargin(left: 32, top: 14, right: 17),
                              variant: TextFormFieldVariant.UnderLineGray200,
                              fontStyle: TextFormFieldFontStyle.InterMedium16),
                          Padding(
                              padding: getPadding(top: 289),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.blueGray200),
                                    SizedBox(
                                        height: getVerticalSize(83),
                                        width: double.maxFinite,
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(83),
                                                      width: double.maxFinite,
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .whiteA700))),
                                              Padding(
                                                  padding: getPadding(top: 14),
                                                  child: PinCodeTextField(
                                                      appContext: context,
                                                      length: 5,
                                                      obscureText: false,
                                                      obscuringCharacter: '*',
                                                      keyboardType:
                                                          TextInputType.number,
                                                      autoDismissKeyboard: true,
                                                      enableActiveFill: true,
                                                      inputFormatters: [
                                                        FilteringTextInputFormatter
                                                            .digitsOnly
                                                      ],
                                                      onChanged: (value) {},
                                                      pinTheme: PinTheme(
                                                          fieldHeight:
                                                              getHorizontalSize(
                                                                  32),
                                                          fieldWidth:
                                                              getHorizontalSize(
                                                                  32),
                                                          shape:
                                                              PinCodeFieldShape
                                                                  .circle,
                                                          selectedFillColor:
                                                              ColorConstant
                                                                  .green400,
                                                          activeFillColor:
                                                              ColorConstant
                                                                  .green400,
                                                          inactiveFillColor:
                                                              ColorConstant
                                                                  .green400,
                                                          inactiveColor:
                                                              ColorConstant.fromHex(
                                                                  "#1212121D"),
                                                          selectedColor:
                                                              ColorConstant.fromHex(
                                                                  "#1212121D"),
                                                          activeColor:
                                                              ColorConstant.fromHex(
                                                                  "#1212121D"))))
                                            ]))
                                  ]))
                        ]))),
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

  /// Navigates to the berandaScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the berandaScreen.
  onTapBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.berandaScreen);
  }
}
