string() {
  String x = "hello"; // String Data Type
  print(x.runtimeType);
  print(x);
}

integer() {
  int x = 69;
  print(x.runtimeType);
  print(x);
}

list() {
  List x = [
    "My",
    "name",
    "is",
    "Saurabh",
    "Agarwal",
  ];
  List<int> y = [
    1,
    2,
    3,
    4,
  ];
  // List<int> z = [1, 2, 3, "error",];  // This will give error due to constraints of integer value in list
  var a = [
    "hi",
    "hello",
    1,
    2.5,
  ];
  print(x.runtimeType);
  print(x);
  print(y.runtimeType);
  print(y);
  print(a.runtimeType);
  print(a);
}

map() {
  Map user = {
    "id": 69,
    "email": "s@gmail.com",
    "phone": 98765,
    "remarks": "ok",
  };
  // Map<String,int> u1 = {"id": 6969,"email": "s@gmail.com",};  // This will give error due to constraints of integer value in Map
  Map<String, int> u2 = {
    "id": 6969,
    "phone": 98765,
  };
  var email = user["email"];
  print(user.runtimeType);
  print(user);
  print(email);
  print(u2.runtimeType);
  print(u2);
}
