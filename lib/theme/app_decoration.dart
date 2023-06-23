import 'package:flutter/material.dart';
import 'package:app_religion/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillIndigo50d8 => BoxDecoration(
        color: ColorConstant.indigo50D8,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: ColorConstant.gray50,
      );
  static BoxDecoration get gradientBlack90059Gray90059 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0.54,
          ),
          end: Alignment(
            0.5,
            0.43,
          ),
          colors: [
            ColorConstant.black90059,
            ColorConstant.gray90059,
          ],
        ),
      );
  static BoxDecoration get fillBluegray100 => BoxDecoration(
        color: ColorConstant.blueGray100,
      );
  static BoxDecoration get txtFillBluegray100 => BoxDecoration(
        color: ColorConstant.blueGray100,
      );
  static BoxDecoration get outlineBlue600 => BoxDecoration(
        color: ColorConstant.gray90001,
        border: Border.all(
          color: ColorConstant.blue600,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillGray90001 => BoxDecoration(
        color: ColorConstant.gray90001,
      );
  static BoxDecoration get fillGray400d8 => BoxDecoration(
        color: ColorConstant.gray400D8,
      );
  static BoxDecoration get gradientBlack90060Gray90060 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0.6,
          ),
          end: Alignment(
            0.5,
            0.48,
          ),
          colors: [
            ColorConstant.black90060,
            ColorConstant.gray90060,
          ],
        ),
      );
  static BoxDecoration get white => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get outlineGray400 => BoxDecoration(
        color: ColorConstant.gray90002,
        border: Border.all(
          color: ColorConstant.gray400,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get txtFillGray400d8 => BoxDecoration(
        color: ColorConstant.gray400D8,
      );
  static BoxDecoration get gradientBlack90059Gray900591 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0.61,
          ),
          end: Alignment(
            0.5,
            0.42,
          ),
          colors: [
            ColorConstant.black90059,
            ColorConstant.gray90059,
          ],
        ),
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );
  static BoxDecoration get outlineBlue6001 => BoxDecoration(
        color: ColorConstant.gray90002,
        border: Border.all(
          color: ColorConstant.blue600,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius circleBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12,
    ),
  );

  static BorderRadius roundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5,
    ),
  );

  static BorderRadius roundedBorder35 = BorderRadius.circular(
    getHorizontalSize(
      35,
    ),
  );

  static BorderRadius circleBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );

  static BorderRadius txtRoundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5,
    ),
  );

  static BorderRadius txtRoundedBorder11 = BorderRadius.circular(
    getHorizontalSize(
      11,
    ),
  );

  static BorderRadius customBorderTL27 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        27,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        27,
      ),
    ),
  );

  static BorderRadius txtRoundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );

  static BorderRadius roundedBorder9 = BorderRadius.circular(
    getHorizontalSize(
      9,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
