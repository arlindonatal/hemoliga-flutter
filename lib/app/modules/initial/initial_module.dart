import 'package:flutter_modular/flutter_modular.dart';

import 'pages/initial_page.dart';

class InitialModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => InitialPage(),
            transition: TransitionType.rotate),
      ];

  static Inject get to => Inject<InitialModule>.of();
}
