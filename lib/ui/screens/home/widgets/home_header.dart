import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // TEXTOS DE SAUDAÇÃO
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Olá, Carlos 👋", // depois podemos integrar com Provider
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xff1A1A1A),
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Bem-vindo de volta!",
              style: TextStyle(fontSize: 14, color: Color(0xff7D7D7D)),
            ),
          ],
        ),

        // AVATAR
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            shape: BoxShape.circle,
            image: const DecorationImage(
              image: AssetImage("/meuapp/assets/images/avatar.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
