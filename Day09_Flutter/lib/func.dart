void main() {
  var y = lw(2, 4);
  print(y);
  // or
  var z = (a, b) {
    return a + b;
  };
  print(z(60, 9));
  // or
  var l = (a, b) => a + b;
  print(l(60, 9));

  var p = () => print("Lambda Expression");
  p();
}

lw(a, b) {
  var x = a + b;
  return x;
}
