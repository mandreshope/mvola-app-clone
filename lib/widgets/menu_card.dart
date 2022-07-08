import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final Icon icon;
  final String title;
  final VoidCallback? onTap;
  const MenuCard({
    Key? key,
    required this.icon,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZoomIn(
      delay: const Duration(seconds: 1),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100,
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              icon,
              const SizedBox(
                height: 5,
              ),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
