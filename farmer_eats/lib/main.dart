import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:softwarelab/router/routes.dart';
import 'package:softwarelab/view/splash_screen/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  static final GlobalKey<NavigatorState> _globalKey =
      GlobalKey<NavigatorState>();
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: _globalKey,
      title: 'Farmer Eats',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'BeVietnamPro',
      ),
      initialRoute: SplashScreen.id,
      onGenerateRoute: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
