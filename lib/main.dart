import 'package:flutter/material.dart';
import 'package:karaoke/package/route.dart' as configure;

import 'module/my_app.dart';

void main() async {
  configure.configureApp();
  runApp(const MyApp());
}
