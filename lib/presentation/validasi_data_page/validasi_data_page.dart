import '../validasi_data_page/widgets/validasi_data_item_widget.dart';
import 'package:app_religion/core/app_export.dart';
import 'package:app_religion/widgets/app_bar/appbar_image.dart';
import 'package:app_religion/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:app_religion/widgets/app_bar/custom_app_bar.dart';
import 'package:app_religion/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ValidasiDataPage extends StatelessWidget {
  const ValidasiDataPage({Key? key}) : super(key: key);

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
                      onTapArrowleft(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Profile")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 28, right: 28),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgVector,
                          height: getVerticalSize(70),
                          width: getHorizontalSize(72),
                          alignment: Alignment.center,
                          margin: getMargin(top: 20)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 23),
                              child: Text("Username",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratBold15Gray800))),
                      Padding(
                          padding: getPadding(top: 31, right: 19),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(14));
                              },
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return ValidasiDataItemWidget();
                              })),
                      Container(
                          height: getVerticalSize(40),
                          width: getHorizontalSize(80),
                          margin: getMargin(left: 2, top: 71),
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: getSize(40),
                                        width: getSize(40),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.blueGray50,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(20))))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 10, top: 10, bottom: 9),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgQuestion,
                                                  height: getSize(20),
                                                  width: getSize(20)),
                                              Padding(
                                                  padding: getPadding(top: 2),
                                                  child: Text("Help",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratMedium14))
                                            ])))
                              ])),
                      Padding(
                          padding: getPadding(left: 2, top: 20),
                          child: Row(children: [
                            CustomIconButton(
                                height: 40,
                                width: 40,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgMinimize)),
                            Padding(
                                padding:
                                    getPadding(left: 7, top: 12, bottom: 9),
                                child: Text("Log out",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratMedium14))
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
                    ]))));
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
  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
