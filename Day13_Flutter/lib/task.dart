import 'dart:io';

void main() => allTask();

allTask() async {
  task1();
  var t4 = await task4();
  task3(t4);
  task2();
}

task1() => print("First Task");
task2() => print("Second Task");
task3(t4) => print("Third Task: $t4");

task4() async {
  var result;
  var d = Duration(seconds: 10);
  await Future.delayed(d, () {
    // Future is a datatype for asynchronous programming
    result = "http://192.168.99.102";
    print("Fourth Task");
  });
  return result;
  //sleep(d);
  //print("Fourth Task");
}
