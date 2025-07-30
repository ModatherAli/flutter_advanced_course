import 'package:flutter/material.dart';
import 'package:flutter_course/di/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:navigator/navigation_module.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(Environment.dev);
  runApp(NavigationModule());
}
