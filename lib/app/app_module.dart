import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando_slidy_aula2/app/app_controller.dart';
import 'package:flutterando_slidy_aula2/app/app_widget.dart';
import 'package:flutterando_slidy_aula2/app/modules/home/home_module.dart';
import 'package:flutterando_slidy_aula2/app/modules/login/login_module.dart';
import 'package:flutterando_slidy_aula2/app/pages/splash/splash_controller.dart';
import 'package:flutterando_slidy_aula2/app/pages/splash/splash_page.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => SplashPage()),
        Router('/home', module: HomeModule()),
        Router('/login', module: LoginModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
