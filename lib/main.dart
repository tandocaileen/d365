import 'package:flutter/material.dart';
import 'package:d365_integration/app/app.bottomsheets.dart';
import 'package:d365_integration/app/app.dialogs.dart';
import 'package:d365_integration/app/app.locator.dart';
import 'package:d365_integration/app/app.router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: stackedRouter.delegate(),
      routeInformationParser: stackedRouter.defaultRouteParser(),
    );
  }
}
