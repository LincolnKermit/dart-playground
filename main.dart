import 'dart:core';


Future<String> CountToMillions() async {
    print("Stopwatch started");
    Stopwatch stopwatch = new Stopwatch()..start();
    for (var i = 0; i < 1000; i++) {
        await Future.delayed(Duration(milliseconds: 1));
    }
    print('Time elapsed: ${stopwatch.elapsed}');
    print("Stopwatch stopped");
    return "Success";
}





void main() {
    print("Starting");
    CountToMillions().then((result) {
    print(result);
    });
    print("The end");
}
