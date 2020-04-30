import 'package:flutter/material.dart';

import '../../../shared/components/header.dart';

class HospitalPage extends StatefulWidget {
  final String title;
  const HospitalPage({Key key, this.title = "Hospital"}) : super(key: key);

  @override
  _HospitalPageState createState() => _HospitalPageState();
}

class _HospitalPageState extends State<HospitalPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header('Hemocentros', showButtons: false),
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
