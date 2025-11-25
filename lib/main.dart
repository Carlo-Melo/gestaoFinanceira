import 'package:flutter/material.dart';
import 'package:meuapp/ui/screens/home/home_screen.dart';
import 'package:provider/provider.dart';
import 'providers/auth_provider.dart';
import 'ui/screens/login/login_screen.dart';
import 'ui/screens/register/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App Financeiro',

        home: const LoginScreen(),

        routes: {
          '/login': (context) => const LoginScreen(),
          '/register': (context) => const RegisterScreen(),
          '/home': (context) => const HomeScreen(),
        },
      ),
    );
  }
}
