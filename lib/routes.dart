import 'package:flutter/material.dart';

import './pages/home/home.dart';
import './pages/login/login.dart';
import './pages/main/main.dart';

class WorkshopRoutes {
  static const home = '/home';
  static const main = '/';
  static const login = '/login';

  static getRoutes(BuildContext context) => {
        home: (context) => const HomePage(title: 'Workshop Home Page'),
        login: (context) => const LoginPage(),
        main: (context) => const MainPage()
      };
}
