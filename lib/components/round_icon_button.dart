import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: const CircleBorder(),
      elevation: 6,
      constraints: const BoxConstraints.tightFor(width: 56, height: 56),
      fillColor: const Color(0xFF1C1F32),
      child: Icon(icon),
    );
  }
}