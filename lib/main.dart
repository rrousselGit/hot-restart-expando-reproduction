@JS()
library callable_function;

import 'package:flutter/material.dart';
import 'package:js/js.dart';

/// Allows calling the assigned function from Dart as well.
@JS()
external Person functionName();

@JS()
@anonymous
class Person {
  external factory Person({String name});

  external String get name;
}

final expando = Expando('john');

void main() {
  final person = functionName();
  print(person.hashCode);
  print(person.name);

  print('---');

  print(expando[person]);

  expando[person] = 42;

  runApp(Container());
}
