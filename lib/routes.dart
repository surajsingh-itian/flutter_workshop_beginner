import 'package:flutter/material.dart';

import './home/home.dart';
import './login/login.dart';
import './main/main.dart';

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
