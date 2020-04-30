import 'package:flutter_modular/flutter_modular.dart';

import 'pages/hospital_page.dart';

class HospitalModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => HospitalPage(),
            transition: TransitionType.rotate),
      ];

  static Inject get to => Inject<HospitalModule>.of();
}
