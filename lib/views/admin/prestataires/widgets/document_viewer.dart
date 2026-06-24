import 'package:flutter/material.dart';

class DocumentViewer extends StatelessWidget {
  final String title;
  final String imagePath;

  const DocumentViewer({
    super.key,
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            blurRadius: 10,
          ),
        ],
      ),

      child: Column(
        children: [
          ListTile(
            title: Text(title),
            trailing: const Icon(
              Icons.visibility,
            ),
          ),

          ClipRRect(
            borderRadius:
            BorderRadius.circular(18),

            child: Image.asset(
              imagePath,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}