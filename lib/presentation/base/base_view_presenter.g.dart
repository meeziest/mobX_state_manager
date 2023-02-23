// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_view_presenter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BaseViewPresenter<M extends BaseViewModel>
    on _BaseViewPresenter<M>, Store {
  late final _$modelAtom =
      Atom(name: '_BaseViewPresenter.model', context: context);

  @override
  M get model {
    _$modelAtom.reportRead();
    return super.model;
  }

  @override
  set model(M value) {
    _$modelAtom.reportWrite(value, super.model, () {
      super.model = value;
    });
  }

  late final _$_BaseViewPresenterActionController =
      ActionController(name: '_BaseViewPresenter', context: context);

  @override
  void startLoading() {
    final _$actionInfo = _$_BaseViewPresenterActionController.startAction(
        name: '_BaseViewPresenter.startLoading');
    try {
      return super.startLoading();
    } finally {
      _$_BaseViewPresenterActionController.endAction(_$actionInfo);
    }
  }

  @override
  void endLoading() {
    final _$actionInfo = _$_BaseViewPresenterActionController.startAction(
        name: '_BaseViewPresenter.endLoading');
    try {
      return super.endLoading();
    } finally {
      _$_BaseViewPresenterActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reportError() {
    final _$actionInfo = _$_BaseViewPresenterActionController.startAction(
        name: '_BaseViewPresenter.reportError');
    try {
      return super.reportError();
    } finally {
      _$_BaseViewPresenterActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateModel() {
    final _$actionInfo = _$_BaseViewPresenterActionController.startAction(
        name: '_BaseViewPresenter.updateModel');
    try {
      return super.updateModel();
    } finally {
      _$_BaseViewPresenterActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
model: ${model}
    ''';
  }
}
