import 'dart:isolate';

void main() {
  Isolate.spawn(sayHi, "Salom");
  Isolate.spawn(sayHi, "Hello World");

  print("Excecution 1");
  print("Excecution 2");
  print("Excecution 3");
}

void sayHi(var msg) {
  print("excecution from sayHi is: $msg");
}
