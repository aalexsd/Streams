import 'dart:async';

void main() {
  final StreamController<int> _streamController = StreamController<int>();
  getNumbers(_streamController);
  _streamController.stream.listen((event) {
    print("Número: $event");
  }, onDone: () {
    print("Concluído");
  }, onError: (error) {
    print("Erro: $error");
  });
}

Future getNumbers(StreamController controller) async {
  for (int i = 1; i < 11; i++) {
    await Future.delayed(const Duration(seconds: 1));
    controller.sink.add(i);
  }
  controller.sink.close();
}
