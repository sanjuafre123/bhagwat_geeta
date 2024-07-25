import 'package:bhagwat_geeta/provider/shloks_provider.dart';
import 'package:bhagwat_geeta/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GeetaProvider(),
        )
      ],
      builder: (context, child) => MaterialApp(
        routes: {
          '/': (context) => const SplashScreen(),
        },
      ),
    );
  }
}
