import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'src/Repository/appLocalization.dart';
import 'src/app.dart';

void logError(
  String code,
  String message,
) =>
    print('Error: $code\nError Message: $message');
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await localization.init();
  final navigator = GlobalKey<NavigatorState>();
  runApp(MyApp(navigator: navigator));
}
