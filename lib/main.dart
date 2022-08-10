import 'package:flutter/material.dart';
import 'package:spiderweb/app_widget.dart';

import 'injection/injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const AppWidget());
}
