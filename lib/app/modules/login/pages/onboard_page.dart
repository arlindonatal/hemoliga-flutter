import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../../../core/util/style.dart';
import '../../../shared/components/button_secondary.dart';

class OnboardPage extends StatelessWidget {

  static const TextStyle goldcoinGreyStyle = TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      fontFamily: "OpenSans");

  static const TextStyle goldCoinWhiteStyle = TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      fontFamily: "OpenSans");

  static const TextStyle greyStyle =
      TextStyle(fontSize: 40.0, color: Colors.grey, fontFamily: "OpenSans");
        static const TextStyle whiteStyle =
      TextStyle(fontSize: 40.0, color: Colors.white, fontFamily: "OpenSans");

  static const TextStyle boldStyle = TextStyle(
    fontSize: 50.0,
    color: Colors.black,
    fontFamily: "OpenSans",
    fontWeight: FontWeight.bold,
  );

  static const TextStyle descriptionGreyStyle = TextStyle(
    color: Colors.grey,
    fontSize: 20.0,
    fontFamily: "OpenSans",
  );

  static const TextStyle descriptionWhiteStyle = TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontFamily: "OpenSans",
  );  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        enableLoop: true,
        fullTransitionValue: 300,
        enableSlideIcon: true,
        waveType: WaveType.liquidReveal,
        positionSlideIcon: 0.5,        
      ),
    );
  }

  final List<Container> pages = [
    Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text(
                    "Pular",
                    style: TextStyle(
                      color: Style.primary(),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "OpenSans"
                    ),
                  ),
                  onPressed: (){ Modular.to.pushReplacementNamed("/home");},
                ),
              ],
            ),
          ),
          Align(
            child: Image.asset("assets/images/onboard_01.png", width: 200),
            alignment: Alignment.center,
          ),               
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Olá, Arlindo!",
                  style: greyStyle,
                ),
                Text(
                  "Bem vindo!",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "A partir de agora você\n"
                  "faz parte da Hemoliga.",
                  style: descriptionGreyStyle,
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Style.orange(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[                
                FlatButton(
                  child: Text(
                    "Pular",
                    style: goldcoinGreyStyle,
                  ),
                  onPressed: (){ Modular.to.pushReplacementNamed("/home");},
                ),
              ],
            ),
          ),
          Align(
            child: Image.asset("assets/images/onboard_02.png", width: 200),
            alignment: Alignment.center,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Seja um doador assíduo!",
                  style: whiteStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Com a doação regular\n"
                  "você contribui para manter\n"
                  "o estoque de sangue em níveis\n"
                  "satisfatórios.",
                  style: descriptionWhiteStyle,
                )
              ],
            ),
          )
        ],
      ),
    ),
     Container(
      color: Style.primary(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            child: Image.asset("assets/images/onboard_03.png", width: 200),
            alignment: Alignment.center,
          ),          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Vamos começar?",
                  style: whiteStyle,
                ),
                SizedBox(height: 20.0),
                Text(
                  "Doação de plaquetas... etc..",
                  style: descriptionWhiteStyle,
                ),
                SizedBox(height: 20.0),
                ButtonSecondary('Começar', action: ()=> Modular.to.pushReplacementNamed("/home")),
              ],
            ),
          )
        ],
      ),
    ),
  ];

}