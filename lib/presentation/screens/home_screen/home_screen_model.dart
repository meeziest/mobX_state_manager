import 'package:game_01/presentation/base/base_view_model.dart';

class HomeScreenModel extends BaseViewModel {
  int counter;

  HomeScreenModel({ScreenState state = ScreenState.Initial, required this.counter})
      : super(state: state);
}
