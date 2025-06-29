import 'package:flutter/material.dart';
import 'package:test_getx/core/constants/style/app_colors.dart';

class FiturAbsensi extends StatelessWidget {
  final String fitur;
  final String descripsi;
  final VoidCallback onPressed;
  final IconData icon;

  const FiturAbsensi({
    super.key,
    required this.fitur,
    required this.descripsi,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(11.0),
      onTap: onPressed,
      child: Container(
        height: 160,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(11.0),
          boxShadow: const [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 24,
              offset: Offset(0, 11),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  // ignore: deprecated_member_use
                  color: const Color.fromARGB(
                    87,
                    226,
                    41,
                    164,
                  ).withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(12.0),
                child: Icon(icon, size: 30, color: primaryColor),
              ),
              const Spacer(),
              Text(
                fitur,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
              Text(
                descripsi,
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
              ),
              const SizedBox(height: 8.0),
            ],
          ),
        ),
      ),
    );
  }
}
