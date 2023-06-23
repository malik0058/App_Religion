import 'package:app_religion/core/app_export.dart';
import 'package:app_religion/widgets/app_bar/appbar_image.dart';
import 'package:app_religion/widgets/app_bar/custom_app_bar.dart';
import 'package:app_religion/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class BlogPostPage extends StatelessWidget {
  const BlogPostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(34),
                leadingWidth: 375,
                leading: Container(
                    height: getSize(24),
                    width: getSize(24),
                    margin: getMargin(left: 16, top: 5, right: 335, bottom: 5),
                    child: Stack(alignment: Alignment.center, children: [
                      AppbarImage(
                          height: getSize(24),
                          width: getSize(24),
                          svgPath: ImageConstant.imgArrowleft,
                          onTap: () {
                            onTapArrowleft1(context);
                          }),
                      AppbarImage(
                          height: getSize(24),
                          width: getSize(24),
                          svgPath: ImageConstant.imgArrowleft)
                    ]))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 1),
                    child: SizedBox(
                        height: getVerticalSize(739),
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                  padding: getPadding(
                                      left: 15, right: 16, bottom: 2),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("Berkah di bulan Ramadhan",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium24),
                                        Padding(
                                            padding: getPadding(top: 6),
                                            child: Text("Author: rizal",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterSemiBold16)),
                                        Container(
                                            width: getHorizontalSize(343),
                                            margin: getMargin(top: 15),
                                            child: Text(
                                                "Ramadhan adalah bulan yang agung, bulan yang mulia dan penuh dengan keberkahan dari Allah subhanahu wa ta'ala.\nأيها الناس قد أظلكم شهر عظيم مبارك\nArtinya: “Telah datang kepada kalian bulan yang agung dan penuh keberkahan”.\nRasulullah SAW menyebutkan dalam khutbahnya: Yang mana Rasulullah SAW memepersiapkannya sejak masuk bulan suci Rajab dengan berdoa :\nاللهم بارك لي في رجب وشعبان وبلغني رمضان\nArtinya: “Ya Allah berikanlah keberkahan kepadaku di bulan suci Rajab dan bulan suci Sya'ban dan sampaikanlah aku di bulan suci Ramadhan”\nKedatangannya kepada kita membawa satu diantara dua. Karena Ramadhan datang dengan membawa nikmat juga laknat, membawa pengampunan juga kesialan, membawa pahala berlipat ganda juga dosa yang berlipat pula, menjadikan orang semakin dekat dengan Allah subhanahu wa ta'ala atau menjadikan orang semakin jauh dari Allah subhanahu wa ta'ala.\nBulan Ramdhan penuh dengan kemudahan dari Allah subhanahu wa ta'ala karena pintu-pintu surga di buka, pintu-pintu neraka ditutup dan setan-setan dibelenggu. Rasulullah shallallahu ‘alaihi wasallam bersabda :\nإِذَاجَاءَرَمَضَانُ فُتِحَتْ أَبْوَابُ الْجَنَّةُ وَغُلِّقَتْ أَبْوَبُ النَّارِ وَصُفِّدَتِ الشَّيَاطِيْنُ\nArtinya : “Apabila datang bulan Ramadhan maka dibukalah pintu-pintu surga dan ditutuplah pintu-pintu neraka,dan setansetan diikat (dibelenggu)” (HR. Bukhari dan Muslim).\nBulan Ramadhan bulan kita di wajibkan untuk berpuasa sesuai yang Allah subhanahu wa ta'ala inginkan, dalam arti berpuasa dengan arti yang sesungguhnya yang menjadikan seseoarang semakin taqwa kepada Allah subhanahu wa ta'ala. La'alakum tataquun (agar kalian menjadi orang-orang yang bertaqwa).\nDan di dalam berpuasa jaga puasa dari perkara-perkara yang yang bisa membatalkan puasa kita. Rasulullah shallallahu ‘alaihi wasallam bersabda:\nخمس يفطرن الصائم : الكذب والغيبة والنميمة واليمين الكاذبةوالنظر بالشهوة\nArtinya : “Ada 5 (lima) hal yang bisa membatalkan pahala orang yang berpuasa berbohong, bergosip, mengadu domba (provokasi), sumpah palsu, dan memandang dengan pandangan syahwat atau nafsu”.\nPuasa bukan hanya menahan lapar dan dahaga. Namun menahan hati dari sifat-sifat buruk dan anggota badan dari perbuatan maksiat dan dosa. Rasulullah shallallahu ‘alaihi wasallam bersabda:\nكم من صائم ليس له من صيامه إلا الجوع والعطش\nArtinya : “Berapa banyak orang yang berpuasa namun tidak mendapatkan apapun dari puasa kecuali hanya lapar dan dahaga”.\nIbadah puasa merupakan salah satu sarana penting untuk mencapai takwa, dan salah satu sebab mendapatkan ampunan dosa, pelipatgandaan kebaikan, dan pengangkatan derajat. Allah subhanahu wa ta'ala telah menjadikan ibadah puasa khusus untuk diri-Nya dari amal-amal ibadah lainnya.\nFirman Allah subhanahu wa ta'ala dalam hadits yang disampaikan oleh Nabi shallallahu ‘alaihi wasallam yang artinya : “Puasa itu untuk-Ku dan Aku langsung membalasnya. Orang yang berpuasa mendapatkan dua kesenangan, yaitu kesenangan ketika berbuka puasa dan kesenangan ketika berjumpa dengan Tuhannya. Sungguh, bau mulut orang berpuasa lebih harum dari pada aroma kesturi” (Hadits Muttafaq ‘Alaih).",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterMedium16))
                                      ]))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                  padding: getPadding(left: 7),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.blueGray200),
                                        SizedBox(
                                            height: getVerticalSize(79),
                                            width: getHorizontalSize(368),
                                            child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  79),
                                                          width:
                                                              getHorizontalSize(
                                                                  368),
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .gray5001))),
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgTabs,
                                                      height:
                                                          getVerticalSize(32),
                                                      width: getHorizontalSize(
                                                          314),
                                                      alignment:
                                                          Alignment.topCenter,
                                                      margin:
                                                          getMargin(top: 14))
                                                ]))
                                      ]))),
                          CustomImageView(
                              imagePath: ImageConstant.imgAmalandibulanramadhan,
                              height: getVerticalSize(212),
                              width: getHorizontalSize(365),
                              radius:
                                  BorderRadius.circular(getHorizontalSize(35)),
                              alignment: Alignment.topCenter),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                  padding: getPadding(
                                      left: 15, right: 16, bottom: 2),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("Berkah di bulan Ramadhan",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium24),
                                        Padding(
                                            padding: getPadding(top: 6),
                                            child: Text("Author: rizal",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterSemiBold16)),
                                        Container(
                                            width: getHorizontalSize(343),
                                            margin: getMargin(top: 15),
                                            child: Text(
                                                "Ramadhan adalah bulan yang agung, bulan yang mulia dan penuh dengan keberkahan dari Allah subhanahu wa ta'ala.\nأيها الناس قد أظلكم شهر عظيم مبارك\nArtinya: “Telah datang kepada kalian bulan yang agung dan penuh keberkahan”.\nRasulullah SAW menyebutkan dalam khutbahnya: Yang mana Rasulullah SAW memepersiapkannya sejak masuk bulan suci Rajab dengan berdoa :\nاللهم بارك لي في رجب وشعبان وبلغني رمضان\nArtinya: “Ya Allah berikanlah keberkahan kepadaku di bulan suci Rajab dan bulan suci Sya'ban dan sampaikanlah aku di bulan suci Ramadhan”\nKedatangannya kepada kita membawa satu diantara dua. Karena Ramadhan datang dengan membawa nikmat juga laknat, membawa pengampunan juga kesialan, membawa pahala berlipat ganda juga dosa yang berlipat pula, menjadikan orang semakin dekat dengan Allah subhanahu wa ta'ala atau menjadikan orang semakin jauh dari Allah subhanahu wa ta'ala.\nBulan Ramdhan penuh dengan kemudahan dari Allah subhanahu wa ta'ala karena pintu-pintu surga di buka, pintu-pintu neraka ditutup dan setan-setan dibelenggu. Rasulullah shallallahu ‘alaihi wasallam bersabda :\nإِذَاجَاءَرَمَضَانُ فُتِحَتْ أَبْوَابُ الْجَنَّةُ وَغُلِّقَتْ أَبْوَبُ النَّارِ وَصُفِّدَتِ الشَّيَاطِيْنُ\nArtinya : “Apabila datang bulan Ramadhan maka dibukalah pintu-pintu surga dan ditutuplah pintu-pintu neraka,dan setansetan diikat (dibelenggu)” (HR. Bukhari dan Muslim).\nBulan Ramadhan bulan kita di wajibkan untuk berpuasa sesuai yang Allah subhanahu wa ta'ala inginkan, dalam arti berpuasa dengan arti yang sesungguhnya yang menjadikan seseoarang semakin taqwa kepada Allah subhanahu wa ta'ala. La'alakum tataquun (agar kalian menjadi orang-orang yang bertaqwa).\nDan di dalam berpuasa jaga puasa dari perkara-perkara yang yang bisa membatalkan puasa kita. Rasulullah shallallahu ‘alaihi wasallam bersabda:\nخمس يفطرن الصائم : الكذب والغيبة والنميمة واليمين الكاذبةوالنظر بالشهوة\nArtinya : “Ada 5 (lima) hal yang bisa membatalkan pahala orang yang berpuasa berbohong, bergosip, mengadu domba (provokasi), sumpah palsu, dan memandang dengan pandangan syahwat atau nafsu”.\nPuasa bukan hanya menahan lapar dan dahaga. Namun menahan hati dari sifat-sifat buruk dan anggota badan dari perbuatan maksiat dan dosa. Rasulullah shallallahu ‘alaihi wasallam bersabda:\nكم من صائم ليس له من صيامه إلا الجوع والعطش\nArtinya : “Berapa banyak orang yang berpuasa namun tidak mendapatkan apapun dari puasa kecuali hanya lapar dan dahaga”.\nIbadah puasa merupakan salah satu sarana penting untuk mencapai takwa, dan salah satu sebab mendapatkan ampunan dosa, pelipatgandaan kebaikan, dan pengangkatan derajat. Allah subhanahu wa ta'ala telah menjadikan ibadah puasa khusus untuk diri-Nya dari amal-amal ibadah lainnya.\nFirman Allah subhanahu wa ta'ala dalam hadits yang disampaikan oleh Nabi shallallahu ‘alaihi wasallam yang artinya : “Puasa itu untuk-Ku dan Aku langsung membalasnya. Orang yang berpuasa mendapatkan dua kesenangan, yaitu kesenangan ketika berbuka puasa dan kesenangan ketika berjumpa dengan Tuhannya. Sungguh, bau mulut orang berpuasa lebih harum dari pada aroma kesturi” (Hadits Muttafaq ‘Alaih).",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterMedium16))
                                      ]))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                  padding: getPadding(left: 7),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.blueGray200),
                                        SizedBox(
                                            height: getVerticalSize(79),
                                            width: getHorizontalSize(368),
                                            child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  79),
                                                          width:
                                                              getHorizontalSize(
                                                                  368),
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .gray5001))),
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgTabs,
                                                      height:
                                                          getVerticalSize(32),
                                                      width: getHorizontalSize(
                                                          314),
                                                      alignment:
                                                          Alignment.topCenter,
                                                      margin:
                                                          getMargin(top: 14))
                                                ]))
                                      ]))),
                          Align(
                              alignment: Alignment.center,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgAmalandibulanramadhan,
                                        height: getVerticalSize(212),
                                        width: getHorizontalSize(365),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(35))),
                                    Container(
                                        width: double.maxFinite,
                                        margin: getMargin(top: 442),
                                        padding: getPadding(
                                            left: 31,
                                            top: 11,
                                            right: 31,
                                            bottom: 11),
                                        decoration: AppDecoration.white
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL27),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgHome,
                                                  height: getSize(15),
                                                  width: getSize(15),
                                                  margin: getMargin(
                                                      top: 12, bottom: 14)),
                                              CustomIconButton(
                                                  height: 40,
                                                  width: 40,
                                                  margin: getMargin(
                                                      left: 42, top: 1),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgTrash)),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgCloseGray500,
                                                  height: getVerticalSize(9),
                                                  width: getHorizontalSize(19),
                                                  margin: getMargin(
                                                      left: 50,
                                                      top: 15,
                                                      bottom: 16),
                                                  onTap: () {
                                                    onTapImgClose(context);
                                                  }),
                                              Spacer(flex: 51),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgBookmark,
                                                  height: getSize(15),
                                                  width: getSize(15),
                                                  margin: getMargin(
                                                      top: 12, bottom: 14)),
                                              Spacer(flex: 48),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgUser,
                                                  height: getSize(15),
                                                  width: getSize(15),
                                                  margin: getMargin(
                                                      top: 12,
                                                      right: 5,
                                                      bottom: 14))
                                            ]))
                                  ]))
                        ]))))));
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
  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
