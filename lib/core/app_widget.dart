// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import '../core/widget_list.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hamburguerias',
      home: WidgetList(),
    );
  }
}