import 'package:bhagwat_geeta/provider/shloks_provider.dart';
import 'package:bhagwat_geeta/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GeetaProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeScreenProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => DetailScreenProvider(),
        )
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context0) => const SplashScreen(),
          '/Detail': (context0) => const DetailScreen(),
          '/home': (context0) => const HomeScreen(),
        },
      ),
    );
  }
}
