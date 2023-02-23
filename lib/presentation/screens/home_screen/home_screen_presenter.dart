import 'package:flutter/widgets.dart';
import 'package:game_01/presentation/base/base_view_presenter.dart';
import 'package:game_01/presentation/screens/home_screen/home_screen_model.dart';
import 'package:mobx/mobx.dart';

part 'home_screen_presenter.g.dart';

class HomeScreenPresenter = _HomeScreenPresenter with _$HomeScreenPresenter;

abstract class _HomeScreenPresenter extends BaseViewPresenter<HomeScreenModel> with Store {
  _HomeScreenPresenter(super.model);

  @override
  void onInitWithContext() async {
    startLoading();
    await Future.delayed(const Duration(seconds: 1)).then((value) => model.counter = 228);
    endLoading();
  }

  @action
  void increment() {
    model.counter++;
    updateModel();
  }

  @action
  void decrement() {
    model.counter--;
    updateModel();
  }

  @action
  void multiplyBy2() {
    model.counter = model.counter * 2;
    Navigator.pop(viewContext);
    updateModel();
  }
}
