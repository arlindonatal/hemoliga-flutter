import 'package:flutter_modular/flutter_modular.dart';

import 'pages/login_page.dart';
import 'pages/onboard_page.dart';
import 'pages/signup_page.dart';
import 'pages/success_page.dart';

class LoginModule extends ChildModule {

  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
    Router('/', child : (_, args) => LoginPage()),
    Router('/signup', child : (_, args) => SignUpPage()), 
    Router('/success', child : (_, args) => SuccessPage()), 
    Router('/onboard', child : (_, args) => OnboardPage()), 
  ];

}