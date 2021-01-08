import 'package:flutter/material.dart';
import './container.dart';
import './material_components.dart';
import './handling_gestures.dart';
void main() {
  runApp(
    // Many Material Design widgets need to be inside of a MaterialApp to display properly, in order to inherit theme data. Therefore, run the application with a MaterialApp.
    MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: SafeArea(
      // child: MyScaffold(),
      //  child: TutorialHome(),
       child:MyButton(),
    ),
  ));
}