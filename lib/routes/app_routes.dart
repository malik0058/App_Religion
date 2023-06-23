import 'package:flutter/material.dart';
import 'package:app_religion/presentation/login_screen/login_screen.dart';
import 'package:app_religion/presentation/register_screen/register_screen.dart';
import 'package:app_religion/presentation/beranda_screen/beranda_screen.dart';
import 'package:app_religion/presentation/materi_screen/materi_screen.dart';
import 'package:app_religion/presentation/chatroom_container_screen/chatroom_container_screen.dart';
import 'package:app_religion/presentation/message_admin_page_screen/message_admin_page_screen.dart';
import 'package:app_religion/presentation/hafalan_screen/hafalan_screen.dart';
import 'package:app_religion/presentation/al_quran_screen/al_quran_screen.dart';
import 'package:app_religion/presentation/sholat_screen/sholat_screen.dart';
import 'package:app_religion/presentation/rukun_screen/rukun_screen.dart';
import 'package:app_religion/presentation/sholat_one_screen/sholat_one_screen.dart';
import 'package:app_religion/presentation/game_screen/game_screen.dart';
import 'package:app_religion/presentation/pilihan_ganda_screen/pilihan_ganda_screen.dart';
import 'package:app_religion/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String registerScreen = '/register_screen';

  static const String validasiDataPage = '/validasi_data_page';

  static const String berandaScreen = '/beranda_screen';

  static const String blogPostPage = '/blog_post_page';

  static const String materiScreen = '/materi_screen';

  static const String chatroomPage = '/chatroom_page';

  static const String chatroomContainerScreen = '/chatroom_container_screen';

  static const String messageAdminPageScreen = '/message_admin_page_screen';

  static const String hafalanScreen = '/hafalan_screen';

  static const String alQuranScreen = '/al_quran_screen';

  static const String sholatScreen = '/sholat_screen';

  static const String rukunScreen = '/rukun_screen';

  static const String sholatOneScreen = '/sholat_one_screen';

  static const String gameScreen = '/game_screen';

  static const String pilihanGandaScreen = '/pilihan_ganda_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    registerScreen: (context) => RegisterScreen(),
    berandaScreen: (context) => BerandaScreen(),
    materiScreen: (context) => MateriScreen(),
    chatroomContainerScreen: (context) => ChatroomContainerScreen(),
    messageAdminPageScreen: (context) => MessageAdminPageScreen(),
    hafalanScreen: (context) => HafalanScreen(),
    alQuranScreen: (context) => AlQuranScreen(),
    sholatScreen: (context) => SholatScreen(),
    rukunScreen: (context) => RukunScreen(),
    sholatOneScreen: (context) => SholatOneScreen(),
    gameScreen: (context) => GameScreen(),
    pilihanGandaScreen: (context) => PilihanGandaScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
