import 'package:flutter/widgets.dart';
import 'package:game_01/presentation/base/base_view_model.dart';
import 'package:mobx/mobx.dart';

part 'base_view_presenter.g.dart';

abstract class BaseViewPresenter<M extends BaseViewModel> = _BaseViewPresenter<M>
    with _$BaseViewPresenter;

abstract class _BaseViewPresenter<M extends BaseViewModel> with Store {
  @observable
  late M model;
  late BuildContext viewContext;

  _BaseViewPresenter(this.model);

  void initWithContext(BuildContext buildContext) {
    viewContext = buildContext;
    onInitWithContext();
  }

  void onInitWithContext();

  @action
  void startLoading() {
    model.state = ScreenState.Loading;
    updateModel();
  }

  @action
  void endLoading() {
    model.state = ScreenState.Done;
    updateModel();
  }

  @action
  void reportError() {
    model.state = ScreenState.Error;
    updateModel();
  }

  @action
  void updateModel() => model = model; // T_T
}
