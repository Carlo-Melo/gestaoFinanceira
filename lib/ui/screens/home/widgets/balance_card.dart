import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  final double saldoTotal;
  final double receitas;
  final double despesas;

  const BalanceCard({
    super.key,
    required this.saldoTotal,
    required this.receitas,
    required this.despesas,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Saldo Total",
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff7D7D7D),
            ),
          ),

          const SizedBox(height: 6),

          Text(
            "R\$ ${saldoTotal.toStringAsFixed(2)}",
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color(0xff1A1A1A),
            ),
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // RECEITAS
              Row(
                children: [
                  Container(
                    width: 14,
                    height: 14,
                    decoration: const BoxDecoration(
                      color: Color(0xff4CAF50),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Receitas",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff7D7D7D),
                        ),
                      ),
                      Text(
                        "R\$ ${receitas.toStringAsFixed(2)}",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff4CAF50),
                        ),
                      ),
                    ],
                  )
                ],
              ),

              // DESPESAS
              Row(
                children: [
                  Container(
                    width: 14,
                    height: 14,
                    decoration: const BoxDecoration(
                      color: Color(0xffF44336),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Despesas",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff7D7D7D),
                        ),
                      ),
                      Text(
                        "R\$ ${despesas.toStringAsFixed(2)}",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffF44336),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
