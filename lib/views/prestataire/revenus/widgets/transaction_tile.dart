import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  final String client;
  final String service;
  final String amount;
  final String date;

  const TransactionTile({
    super.key,
    required this.client,
    required this.service,
    required this.amount,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),

      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Color(0xFF26B6A6),
          child: Icon(
            Icons.payments,
            color: Colors.white,
          ),
        ),

        title: Text(client),

        subtitle: Text(
          "$service\n$date",
        ),

        trailing: Text(
          amount,
          style: const TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}