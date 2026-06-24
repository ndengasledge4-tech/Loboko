import 'package:flutter/material.dart';

import 'admin_drawer.dart';

class AdminScaffold extends StatelessWidget {
  final String title;
  final Widget body;

  const AdminScaffold({
    super.key,
    required this.title,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      const Color(0xFFF6F8FB),

      drawer: const AdminDrawer(),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        iconTheme: const IconThemeData(
          color: Color(0xFF1E3A5F),
        ),

        title: Text(
          title,
          style: const TextStyle(
            color: Color(0xFF1E3A5F),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: body,
    );
  }
}