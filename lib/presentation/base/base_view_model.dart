abstract class BaseViewModel {
  ScreenState state;

  BaseViewModel({this.state = ScreenState.Initial});

  bool get isLoading => state.isLoading;

  bool get isDone => state.isDone;

  bool get isError => state.isError;

  bool get isNone => state.isInitial;
}

enum ScreenState { Initial, Loading, Error, Done }

extension ScreenStateExt on ScreenState {
  bool get isLoading => this == ScreenState.Loading;

  bool get isDone => this == ScreenState.Done;

  bool get isError => this == ScreenState.Error;

  bool get isInitial => this == ScreenState.Initial;
}
