import 'package:flutter/material.dart';
import 'src/Repository/appLocalization.dart';
import 'src/app.dart';

void logError(String code, String message) =>
    print('Error: $code\nError Message: $message');
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await localization.init();
  WidgetsFlutterBinding.ensureInitialized();
  final GlobalKey<NavigatorState> navigator = GlobalKey<NavigatorState>();
  runApp(MyApp(
    navigator: navigator,
  ));
}
