import 'package:flutter/material.dart';

import '../../../core/lang/app_localizations.dart';
import '../../../shared/components/header.dart';

class InitialPage extends StatefulWidget {
  final String title;
  const InitialPage({Key key, this.title = "Initial"}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    var hello = AppLocalizations.of(context).translate('hello');
    return Column(
      children: [
        Header('$hello\nArlindo!', showButtons: true),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [],
              )
            ],
          ),
        )
      ],
    );
  }
}
