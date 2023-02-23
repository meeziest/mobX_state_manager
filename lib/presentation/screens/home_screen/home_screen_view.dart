import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:game_01/presentation/base/base_view_model.dart';
import 'package:game_01/presentation/screens/home_screen/home_screen_model.dart';
import 'package:game_01/presentation/screens/home_screen/home_screen_presenter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final HomeScreenPresenter _presenter;

  @override
  void initState() {
    _presenter = HomeScreenPresenter(HomeScreenModel(counter: 0));
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _presenter.initWithContext(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Observer(builder: (context) {
          switch (_presenter.model.state) {
            case ScreenState.Initial:
              return const SizedBox();
            case ScreenState.Loading:
              return const CircularProgressIndicator();
            case ScreenState.Error:
              return TextButton(onPressed: _presenter.endLoading, child: const Text('Fix'));
            case ScreenState.Done:
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '${_presenter.model.counter}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  GestureDetector(
                    onTap: _presenter.reportError,
                    child: Text(
                      'make error',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ],
              );
            default:
              return const SizedBox();
          }
        }),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _presenter.decrement,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: _presenter.increment,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: _presenter.multiplyBy2,
            tooltip: 'Multiply by 2',
            child: const Icon(Icons.multiline_chart),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
