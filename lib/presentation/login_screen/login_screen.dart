import 'package:app_religion/core/app_export.dart';
import 'package:app_religion/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 41, right: 41),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Text("LOGIN",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratSemiBold26)),
                      CustomButton(
                          height: getVerticalSize(29),
                          text: "Email",
                          margin: getMargin(left: 2, top: 76)),
                      CustomButton(
                          height: getVerticalSize(29),
                          text: "Password",
                          margin: getMargin(left: 2, top: 35)),
                      CustomButton(
                          height: getVerticalSize(46),
                          text: "Login",
                          margin: getMargin(left: 1, top: 99),
                          variant: ButtonVariant.FillIndigo400,
                          padding: ButtonPadding.PaddingAll14,
                          fontStyle: ButtonFontStyle.MontserratBold14,
                          onTap: () {
                            onTapLoginone(context);
                          }),
                      Padding(
                          padding: getPadding(top: 15),
                          child: Row(children: [
                            Text("Already have an account?",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratMedium10),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtLogintwo(context);
                                },
                                child: Padding(
                                    padding: getPadding(left: 14),
                                    child: Text("Login",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratMedium10IndigoA700)))
                          ])),
                      Padding(
                          padding: getPadding(left: 57, top: 72),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgContrast,
                                height: getVerticalSize(24),
                                width: getHorizontalSize(23)),
                            Padding(
                                padding:
                                    getPadding(left: 11, top: 7, bottom: 2),
                                child: Text("Sign in with Google",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratMedium12))
                          ])),
                      Padding(
                          padding: getPadding(left: 57, top: 40, bottom: 5),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgFacebook,
                                height: getVerticalSize(19),
                                width: getHorizontalSize(20)),
                            Padding(
                                padding: getPadding(left: 8, top: 3, bottom: 1),
                                child: Text("Sign in with Facebook",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratMedium12))
                          ]))
                    ]))));
  }

  /// Navigates to the registerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the registerScreen.
  onTapLoginone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }

  /// Navigates to the registerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the registerScreen.
  onTapTxtLogintwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }
}
