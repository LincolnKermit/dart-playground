import 'dart:core';
import 'dart:async';
import 'dart:io';


int i = 0;
// print(Process.runSync("clear", [], runInShell: true).stdout);



Future<String> task1() async {
    Stopwatch stopwatch = new Stopwatch()..start();
    int z = 0;
    for (var i = 0; i < 19940; i++) {
        if (z % 5 == 0) {
            print("T1 : " + (100 * i / 19940).toString() + " %");
            z = 0;
        }else {
            z++;
            print(Process.runSync("clear", [], runInShell: true).stdout);
        }
        await Future.delayed(Duration(milliseconds: 1));
    }
    return "Success";
}

Future<String> task2() async {
    Stopwatch stopwatch = new Stopwatch()..start();
    int z = 0;
    for (var i = 0; i < 16940; i++) {
        if (z % 5 == 0) {
            print("T3 : " + (100 * i / 16940).toString() + " %");
            z = 0;
        }else {
            z++;
            print(Process.runSync("clear", [], runInShell: true).stdout);
        }
        await Future.delayed(Duration(milliseconds: 1));
    }
    return "Success";
}

Future<String> task3() async {
    Stopwatch stopwatch = new Stopwatch()..start();
    int z = 0;
    for (var i = 0; i < 17940; i++) {
        if (z % 5 == 0) {
            print("T4 : " + (100 * i / 17940).toString() + " %");
            z = 0;
        }else {
            z++;
            print(Process.runSync("clear", [], runInShell: true).stdout);
        }
        await Future.delayed(Duration(milliseconds: 1));
    }
    return "Success";
}

Future<String> task4() async {
    Stopwatch stopwatch = new Stopwatch()..start();
    int z = 0;
    for (var i = 0; i < 13940; i++) {
        if (z % 5 == 0) {
            print("T2 : " + (100 * i / 13940).toString() + " %");
            z = 0;
        }else {
            z++;
            print(Process.runSync("clear", [], runInShell: true).stdout);
        }
        await Future.delayed(Duration(milliseconds: 1));
    }
    return "Success";
}



void loading(int i) {
    print((i * 25).toString() + " %");
}


void increment() {
    i++;
}


void main() {
    i = 0;
    print("Starting task 1");
    task1().then((result) { // saying ok when u are done print the result while I do others things
    print("Task 1 completed");
    increment();
    loading(i);   
    });
    print("Starting task 2");
    task2().then((result){
        print("Task 2 completed");
        increment();
        loading(i);
    });
    print("Starting task 3");
    task3().then((result){
        print("Task 3 completed");
        increment();
        loading(i);
    });
    print("Starting task 4");
    task4().then((result){
        print("Task 4 completed");
        increment();
        loading(i);
    });
    print("All tasks started");
    print("Waiting for all tasks to complete");
}
