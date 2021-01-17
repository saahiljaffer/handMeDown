import 'dart:collection';

import 'package:flutter/material.dart';

String currentImage;
String nextImage;


Queue<String> Items = new Queue();

InitializeQueue(){
  Items.add('hoodie');
  Items.add('jacket');
  Items.add('shirt');
}