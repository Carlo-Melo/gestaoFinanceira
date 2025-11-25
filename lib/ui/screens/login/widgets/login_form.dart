import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final usuarioController = TextEditingController();
  final senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: usuarioController,
          decoration: InputDecoration(
            labelText: "Usuário",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: senhaController,
          obscureText: true,
          decoration: InputDecoration(
            labelText: "Senha",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        const SizedBox(height: 20),

        // BOTÃO DE LOGIN
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              // loginProvider.login(usuarioController.text, senhaController.text);
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              "Entrar",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),

        const SizedBox(height: 12),

        // LINK PARA CADASTRAR
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/register');
          },
          child: Text(
            "Cadastrar conta",
            style: TextStyle(
              color: Colors.blue.shade700,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
