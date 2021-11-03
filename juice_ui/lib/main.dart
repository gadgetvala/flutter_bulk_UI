import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:juice/router/routes.dart';
import 'package:juice/view/splash_screen.dart';
import 'global/shared_preferences.dart';
import 'locator/locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  // TODO uncomment after connecting Firebase
  // await Firebase.initializeApp();
  final Preferences prefs = locator<Preferences>();
  await prefs.init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'juice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SplashScreen.id,
      onGenerateRoute: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
