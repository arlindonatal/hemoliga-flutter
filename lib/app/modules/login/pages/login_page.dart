import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../core/util/style.dart';
import '../../../shared/components/button.dart';
import '../../../shared/components/button_secondary.dart';
import '../../../shared/components/title_default.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;
  bool _passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                color: Style.backgound(),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 50.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      TitleDefault("LOGIN"),
                      SizedBox(height: 30.0),
                      _buildEmailField(),
                      SizedBox(height: 15.0),
                      _buildPasswordField(),
                      _buildForgotPasswordBtn(),
                      Button('Entrar',
                          action: () => Modular.to
                              .pushReplacementNamed('/login/success')),
                      ButtonSecondary('Cadastrar',
                          action: () => Modular.to.pushNamed('/login/signup')),
                      _buildSignInWithText(),
                      _buildSocialBtnRow()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmailField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Email', style: defaultLabelStyle),
        Container(
          alignment: Alignment.centerLeft,
          height: 50.0,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: defaultHintTextStyle,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 14.0),
              icon: Icon(Icons.email, color: Style.light()),
              prefixStyle: TextStyle(color: Style.primary()),
              hintText: 'Digite seu Email',
              hintStyle: defaultHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Senha', style: defaultLabelStyle),
        Container(
          alignment: Alignment.centerLeft,
          height: 50.0,
          child: TextFormField(
            obscureText: _passwordVisible,
            keyboardType: TextInputType.text,
            style: defaultHintTextStyle,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Icon(
                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Theme.of(context).primaryColorDark,
                ),
                onPressed: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
              ),
              contentPadding: EdgeInsets.only(top: 14.0),
              icon: Icon(Icons.lock, color: Style.light()),
              prefixStyle: TextStyle(color: Style.primary()),
              hintText: 'Digite sua senha',
              hintStyle: defaultHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildForgotPasswordBtn() {
    return Container(
        height: 50.0,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _buildRememberMeCheckbox(),
              FlatButton(
                onPressed: () => print('Forgot Password Button Pressed'),
                padding: EdgeInsets.only(right: 0.0),
                child: Text(
                  'Esqueceu a senha?',
                  style: defaultLabelStyle,
                ),
              ),
            ]));
  }

  Widget _buildRememberMeCheckbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Style.secondary()),
            child: CircularCheckBox(
              value: _rememberMe,
              activeColor: Style.primary(),
              onChanged: (value) {
                setState(() {
                  _rememberMe = value;
                });
              },
            ),
          ),
          Text(
            'Lembrar',
            style: defaultLabelStyle,
          ),
        ],
      ),
    );
  }

  Widget _buildSignInWithText() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 15.0),
        child: Column(
          children: <Widget>[
            Text(
              '- OU -',
              style: TextStyle(
                color: Style.secondary(),
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 10.0),
            Text('Acesse com:', style: defaultLabelStyle),
          ],
        ));
  }

  Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 6.0,
            ),
          ],
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialBtnRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildSocialBtn(
            () => print('Login with Google'),
            AssetImage(
              'assets/images/google.jpg',
            ),
          ),
          _buildSocialBtn(
            () => print('Login with Facebook'),
            AssetImage(
              'assets/images/facebook.jpg',
            ),
          ),
        ],
      ),
    );
  }

  void redirectLogin() {
    Modular.to.pushReplacementNamed('/home');
  }
}
