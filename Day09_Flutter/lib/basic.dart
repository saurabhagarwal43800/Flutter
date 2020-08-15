main() {
  //print("Hi");
  //lw("jack", "IN");
  //lw("US", "pop");
  //var x = lw("saurabh", "IN");
  //print(x.runtimeType);
  //length("piyush", "AN");
  //var a = lw_name("Aditya");
  //print("Aditya name length $a");
  var len = lw_name(country: "IN", name: "Saurabh");
  print(len);
  length(country: "America");
  length(name: "Hakuna Matata");
  length(country: "America", name: "Hakuna Matata");
}

lw(name, String country) {
  //print("hello " + name + ", from country " + country);
  print("hello $name, from country $country");
  print("Length of $name: ${name.length}");
  return name.length;
}

// void is used when Function didn't return anything
void length({String name = "Saurabh", String country = "IN"}) {
  print(
      "hello $name, from country $country. Length of your name: ${name.length}");
}

// Specifying return data type as int for function lw_name
int lw_name({String name, String country}) {
  return name.length;
}
