import 'package:flutter/material.dart';

class ConfirmCard extends StatelessWidget {

  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  const ConfirmCard({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(bottom: 16),

      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),

        child: Container(
          width: double.infinity,
          height: 60,

          padding: const EdgeInsets.symmetric(horizontal: 18),

          decoration: BoxDecoration(
            color: const Color(0xFFB8DDF8),
            borderRadius: BorderRadius.circular(12),
          ),

          child: Row(
            children: [

              Icon(
                icon,
                color: Colors.black87,
                size: 22,
              ),

              const SizedBox(width: 16),

              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}