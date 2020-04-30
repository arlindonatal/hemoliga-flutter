import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_widget.dart';
import 'modules/home/home_module.dart';
import 'modules/login/login_module.dart';
import 'modules/splash/pages/splash_page.dart';

///Módulo principal que determina todas as rotas da aplicação
class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => Dio()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SplashPage()),
        Router('/login', module: LoginModule(), transition: TransitionType.noTransition),
        Router('/home', module: HomeModule()),
        //Router('/tabs', module: TabsModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  ///Retorna a instância do módulo
  static Inject get to => Inject<AppModule>.of();
}
