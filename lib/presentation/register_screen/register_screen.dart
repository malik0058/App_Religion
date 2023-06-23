import 'package:app_religion/core/app_export.dart';
import 'package:app_religion/widgets/custom_button.dart';
import 'package:app_religion/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 42, top: 108, right: 42),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Welcome back",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratSemiBold26),
                          CustomButton(
                              height: getVerticalSize(29),
                              text: "username",
                              margin: getMargin(top: 74)),
                          CustomButton(
                              height: getVerticalSize(29),
                              text: "email",
                              margin: getMargin(top: 13)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              autofocus: true,
                              controller: passwordController,
                              hintText: "Password",
                              margin: getMargin(top: 13),
                              variant: TextFormFieldVariant.FillGray200,
                              shape: TextFormFieldShape.RoundedBorder14,
                              padding: TextFormFieldPadding.PaddingT7,
                              fontStyle:
                                  TextFormFieldFontStyle.MontserratMedium11,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              suffix: Container(
                                  margin: getMargin(
                                      left: 30, top: 7, right: 15, bottom: 7),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgGrid)),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(29)),
                              isObscureText: true),
                          CustomButton(
                              height: getVerticalSize(46),
                              text: "Register",
                              margin: getMargin(top: 79, bottom: 5),
                              variant: ButtonVariant.FillIndigo400,
                              padding: ButtonPadding.PaddingAll14,
                              fontStyle: ButtonFontStyle.MontserratBold14,
                              onTap: () {
                                onTapRegister(context);
                              })
                        ])))));
  }

  /// Navigates to the berandaScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the berandaScreen.
  onTapRegister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.berandaScreen);
  }
}
