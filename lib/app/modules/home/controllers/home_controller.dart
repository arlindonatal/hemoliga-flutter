import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {

  @observable
  int selectedPage = 0;

  @action
  void changePage(int index) {
    selectedPage = index;
  }
}
