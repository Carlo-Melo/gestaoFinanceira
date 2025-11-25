import 'package:flutter/material.dart';
import 'package:meuapp/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final userController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthProvider>(context);

    return Column(
      children: [
        TextField(
          controller: userController,
          decoration: const InputDecoration(labelText: "Usuário"),
        ),
        const SizedBox(height: 16),

        TextField(
          controller: emailController,
          decoration: const InputDecoration(labelText: "Email"),
        ),
        const SizedBox(height: 16),

        TextField(
          controller: passController,
          obscureText: true,
          decoration: const InputDecoration(labelText: "Senha"),
        ),
        const SizedBox(height: 20),

        if (auth.errorMessage != null)
          Text(auth.errorMessage!, style: const TextStyle(color: Colors.red)),

        const SizedBox(height: 10),

        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: auth.isLoading
                ? null
                : () async {
                    bool ok = await auth.register(
                      userController.text,
                      passController.text,
                      emailController.text,
                    );

                    if (ok) {
                      Navigator.pop(context); // volta pro login
                    }
                  },
            child: auth.isLoading
                ? const CircularProgressIndicator()
                : const Text("Cadastrar"),
          ),
        ),
      ],
    );
  }
}
