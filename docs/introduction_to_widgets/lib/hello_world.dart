// replace main file code with this
import 'package:flutter/material.dart';

void main() {
  // The runApp() function takes the given Widget and makes it the root of the widget tree
  runApp(
    // The framework forces the root widget to cover the screen, which means the text “Hello, world” ends up centered on screen.
    Center(
      child: Text(
        'Hello, world!',
        textDirection: TextDirection.ltr,
      ),
    ),
  );
}
