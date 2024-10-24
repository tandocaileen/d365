import 'package:d365_integration/app/app.custom.locator.dart';
import 'package:d365_integration/ui/common/d365_theme.dart';
import 'package:flutter/material.dart';
import 'package:d365_integration/app/app.bottomsheets.dart';
import 'package:d365_integration/app/app.dialogs.dart';
import 'package:d365_integration/app/app.locator.dart';
import 'package:d365_integration/app/app.router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator(stackedRouter: stackedRouter)
      .then((_) => customSetupLocator(
            stackedRouter: stackedRouter,
          ));
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (_, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: D365Theme.getThemeData(ThemeMode.light),
          routerDelegate: stackedRouter.delegate(),
          routeInformationParser: stackedRouter.defaultRouteParser(),
        );
      },
    );
  }
}
