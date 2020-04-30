import 'package:flutter/material.dart';

import '../../core/util/icons_hemoliga_icons.dart';
import '../../core/util/style.dart';

class Header extends StatelessWidget {
  final String title;
  final bool showButtons;

  const Header(this.title, {this.showButtons = false, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: TitleCripper(),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Style.foreground(),
                    fontFamily: "OpenSans"),
              ),
            ),
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(gradient: Style.gradient()),
          ),
        ),
        showButtons
            ? Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  width: 40,
                  height: 140,
                  child: Column(
                    children: [
                      IconButton(
                        icon: Icon(IconsHemoliga.configuracoes),
                        onPressed: () {
                          print('Config');
                        },
                        iconSize: 25,
                        color: Style.primary(),
                      ),
                      IconButton(
                        icon: Icon(IconsHemoliga.sino),
                        onPressed: () {
                          print('Alert');
                        },
                        iconSize: 25,
                        color: Style.primary(),
                      )
                    ],
                  ),
                ))
            : Container(),
      ],
    );
  }
}

class TitleCripper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    var firstControlPoint = Offset(size.width / 2, size.height);
    var firstEndPoint = Offset(size.width, size.height / 3 - 40);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.lineTo(size.width, size.height / 4);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
