import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../providers/auth_provider.dart';

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
    final auth = Provider.of<AuthProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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

        // MENSAGEM DE ERRO
        if (auth.errorMessage != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              auth.errorMessage!,
              style: const TextStyle(color: Colors.red),
            ),
          ),

        // BOTÃO DE LOGIN
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: auth.isLoading
                ? null
                : () async {
                    final success = await auth.login(
                      usuarioController.text.trim(),
                      senhaController.text.trim(),
                    );

                    if (success) {
                      Navigator.pushReplacementNamed(context, '/home');
                    }
                  },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: auth.isLoading
                ? const CircularProgressIndicator()
                : const Text(
                    "Entrar",
                    style: TextStyle(fontSize: 16),
                  ),
          ),
        ),

        const SizedBox(height: 12),

        // IR PARA CADASTRAR
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
