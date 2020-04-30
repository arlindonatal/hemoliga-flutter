import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/util/form_util.dart';
import '../../../shared/components/blood_select.dart';
import '../../../shared/components/button.dart';
import '../../../shared/components/input_date.dart';
import '../../../shared/components/input_password.dart';
import '../../../shared/components/input_select.dart';
import '../../../shared/components/input_text.dart';
import '../../../shared/components/scroll_block.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _form = GlobalKey<FormState>();
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _stateFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return ScrollBlock('CADASTRO', _buildForm());
  }

  Widget _buildForm() {
    return Form(
      key: _form,
      autovalidate: true,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          InputText(
            'Nome',
            validate: validateName,
            focusNode: _nameFocusNode,
            nextFocus: _emailFocusNode,
          ),
          InputText(
            'Email',
            validate: validateEmail,
            keyboardType: TextInputType.emailAddress,
            focusNode: _emailFocusNode,
            nextFocus: _stateFocusNode,
          ),
          InputText('Estado', focusNode: _stateFocusNode),
          InputSelect('Sexo', items: genderList()),
          InputDate('Última Doação'),
          InputPassword('Senha', focusNode: _passwordFocusNode),
          BloodSelect(),
          Button('Confirmar', action: () => print('Enviado')),
        ],
      ),
    );
  }

  String validateName(String value) {
    if (value.length < 3) {
      return 'Informe o nome completo';
    } else {
      return null;
    }
  }

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    if (!RegExp(pattern).hasMatch(value)) {
      return 'Email inválido';
    } else {
      return null;
    }
  }
}
