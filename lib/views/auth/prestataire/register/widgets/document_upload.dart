import 'package:flutter/material.dart';

class DocumentUpload extends StatelessWidget {
  final String title;

  const DocumentUpload({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: const Color(0xFFF5F7FA),

        borderRadius: BorderRadius.circular(20),

        border: Border.all(
          color: const Color(0xFF26B6A6)
              .withOpacity(.25),
        ),
      ),

      child: Column(
        children: [

          const Icon(
            Icons.upload_file_outlined,
            size: 50,
            color: Color(0xFF26B6A6),
          ),

          const SizedBox(height: 10),

          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 15),

          ElevatedButton.icon(
            onPressed: () {},

            icon: const Icon(
              Icons.file_upload_outlined,
              color: Colors.white,
            ),

            label: const Text(
              "Choisir un fichier",
              style: TextStyle(
                color: Colors.white,
              ),
            ),

            style: ElevatedButton.styleFrom(
              backgroundColor:
              const Color(0xFF26B6A6),

              shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}