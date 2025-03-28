import 'dart:core';
import 'dart:async';

Future<String> CountToMillions() async {
    Stopwatch stopwatch = new Stopwatch()..start();
    for (var i = 0; i < 1000; i++) {
        await Future.delayed(Duration(milliseconds: 1));
    }
    print('Time elapsed: ${stopwatch.elapsed}');
    print(DateTime.now);
    return "Success";
}

 



void main() {
    print("Starting");
    CountToMillions().then((result) { // saying ok when u are done print the result while I do others things
    print(result);
    });
    print("Starting parallel tasks - counting the alphabet"); // starting doing other things
    for (var y = 0; y < 30000; y++) {
        print(y);
        for (var i = 0; i < 26; i++) {
            print(String.fromCharCode(65 + i)); // double loop
        }
    }

}
