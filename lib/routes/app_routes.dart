import 'package:flutter/material.dart';

import '../screens/detail_screen.dart';
import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/voucher_screen.dart';

class AppRoutes {
  AppRoutes._();

  static const login = '/';
  static const home = '/home';
  static const detail = '/detail';
  static const voucher = '/voucher';

  static Map<String, WidgetBuilder> get routes => {
        login: (_) => const LoginScreen(),
        home: (_) => const HomeScreen(),
        detail: (_) => const DetailScreen(),
        voucher: (_) => const VoucherScreen(),
      };
}