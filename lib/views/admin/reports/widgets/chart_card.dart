import 'package:flutter/material.dart';

class ChartCard extends StatelessWidget {
  final String title;

  const ChartCard({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,

        children: [

          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color(0xFF1E3A5F),
            ),
          ),

          const SizedBox(height: 25),

          Expanded(
            child: Row(
              crossAxisAlignment:
              CrossAxisAlignment.end,

              mainAxisAlignment:
              MainAxisAlignment.spaceEvenly,

              children: [

                _bar(90),
                _bar(140),
                _bar(80),
                _bar(180),
                _bar(130),
                _bar(210),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _bar(double height) {
    return Container(
      width: 22,
      height: height,

      decoration: BoxDecoration(
        color: const Color(0xFF26B6A6),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}