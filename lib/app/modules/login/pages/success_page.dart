import 'dart:async';

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SuccessPage extends StatefulWidget {
  SuccessPage({Key key}) : super(key: key);

  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
        () => Modular.to.pushReplacementNamed("/login/onboard"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: FlareActor(
            "assets/animations/login_success.flr",
            alignment: Alignment.center,
            fit: BoxFit.contain,
            animation: "success",      
          )  
        )
    );
  }
}
