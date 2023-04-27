import 'package:design_app/Screens/check_email_page.dart';
import 'package:design_app/Screens/create_account_page.dart';
import 'package:design_app/Screens/forgot_password_page.dart';
import 'package:design_app/Screens/home_page1.dart';
import 'package:design_app/Screens/intro_page.dart';
import 'package:design_app/Screens/loginpage.dart';
import 'package:design_app/Screens/reset_successful.dart';
import 'package:design_app/Screens/search_location_page.dart';
import 'package:design_app/Screens/select_location_page.dart';
import 'package:design_app/Screens/select_plan_page.dart';
import 'package:design_app/Screens/smart_detail_page.dart';
import 'package:flutter/material.dart';

import 'Screens/home_page2.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      initialRoute: "/",
      routes: {
        "/": (context) => const LoginPage(),
        "create_account_page": (context) => const CreateAccountPage(),
        "forgot_password_page": (context) => const ForgotPasswordPage(),
        "check_email_page": (context) => const CheckEmailPage(),
        "reset_successful": (context) => const ResetSuccessfulPage(),
        "intro_page": (context) => const IntroPage(),
        "home_page1": (context) => const HomePage1(),
        "home_page2": (context) => const HomePage2(),
        "select_location_page": (context) => const SelectLocationPage(),
        "smart_detail_page": (context) => const SmartDetailPage(),
        "select_plan_page": (context) => const SelectPlanPage(),
        "search_location_page": (context) => const SearchLocationPage(),
      },
    ),
  );
}
