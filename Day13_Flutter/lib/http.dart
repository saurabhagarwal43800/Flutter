import 'package:http/http.dart' as http;

void main() => allTask();

allTask() async {
  task1();
  task2();
  task3();
  task4();
}

task1() => print("First Task");
task2() async {
  var url = "http://192.168.99.102/cgi-bin/date.py";
  var response = await http.get(url);
  print(response.body);
}

task3() => print("Third Task");
task4() => print("Fourth Task");
