import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'core/lang/app_localizations.dart';
import 'core/util/style.dart';

///
class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Hemoliga',
      theme: ThemeData(
        primaryColor: Style.primary(),        
        backgroundColor : MaterialColor(0xFFFF5E62, color),
        brightness: Brightness.light,
        primarySwatch: MaterialColor(0xFFFF5E62, color),
        fontFamily: 'OpenSans'
        
      ),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
     localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('pt', 'BR'),
        const Locale('en', 'US')
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales){
          if (supportedLocale.languageCode == locale.languageCode &&
            supportedLocale.countryCode == locale.countryCode){
              return supportedLocale;
            }
        }
        return supportedLocales.first;
      },
    );
  }

  final Map<int, Color> color =
    {
    50:Color.fromRGBO(255,94,98, .1),
    100:Color.fromRGBO(255,94,98, .2),
    200:Color.fromRGBO(255,94,98, .3),
    300:Color.fromRGBO(255,94,98, .4),
    400:Color.fromRGBO(255,94,98, .5),
    500:Color.fromRGBO(255,94,98, .6),
    600:Color.fromRGBO(255,94,98, .7),
    700:Color.fromRGBO(255,94,98, .8),
    800:Color.fromRGBO(255,94,98, .9),
    900:Color.fromRGBO(255,94,98, 1),
    };  
}
