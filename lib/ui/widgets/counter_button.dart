import 'package:flutter/material.dart';
import '../styles.dart';
import '../dimensions.dart';

class CounterButton extends StatelessWidget {
  final VoidCallback onTapDown;
  final VoidCallback onTapUp;
  final IconData icon;
  final Color color;

  const CounterButton({
    super.key,
    required this.onTapDown,
    required this.onTapUp,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => onTapDown(),
      onTapUp: (_) => onTapUp(),
      onTapCancel: onTapUp,
      child: Container(
        padding: const EdgeInsets.all(AppDimensions.buttonPadding),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(AppDimensions.buttonRadius),
        ),
        child: Icon(icon, color: Colors.white, size: 32),
      ),
    );
  }
}

