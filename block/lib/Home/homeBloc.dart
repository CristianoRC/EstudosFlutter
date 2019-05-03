import 'dart:async';

class HomeBloc {
  var _counter = 0;

  var _streamController = new StreamController<int>();

  Stream<int> get stream => _streamController.stream;

  void increment() {
    _counter++;
    _streamController.sink.add(_counter);
  }

  void decrement() {
    _counter--;
    _streamController.sink.add(_counter);
  }

  dispose() {
    _streamController.close();
  }
}
