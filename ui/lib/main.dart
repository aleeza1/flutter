import 'package:flutter/material.dart';
import 'package:ui/counter.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    home:Counter()));
}