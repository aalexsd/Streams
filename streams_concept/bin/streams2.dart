void main() {
  getNumbers().listen((event) {
    print('Número: $event');
  }); 
}

Stream getNumbers() async* {
  for (int i = 0; i < 11; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}
