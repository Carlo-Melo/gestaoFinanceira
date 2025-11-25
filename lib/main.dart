import 'package:flutter/material.dart';
import 'ui/screens/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Financeiro',
      
      // TELA INICIAL
      home: const LoginScreen(),

      // ROTAS (quando você criar novas telas, basta adicionar aqui)
      routes: {
        '/login': (context) => const LoginScreen(),
        // '/register': (context) => const RegisterScreen(),  ← adiciona depois
      },

      // TEMA BASE
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.grey.shade100,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
