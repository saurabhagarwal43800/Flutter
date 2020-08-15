void main() {
  Function myfunc = (word) => word.length;
  //print(myfunc("Saurabh"));
  mylen(
    myfunction: myfunc,
    word: "Saurabh",
  );
}

mylen({String word, Function myfunction}) {
  //Higher order function because we are passing a function
  print(word);
  print(myfunction(word));
}
