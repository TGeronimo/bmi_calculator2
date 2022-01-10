import 'package:flutter/material.dart';

class RoundActionButton extends StatelessWidget {
  const RoundActionButton({required this.icon, required this.onClick});

  final IconData icon;
  final VoidCallback onClick;
  // I had a rendering error when using Function as the type
  // of onClick, so I used VoidCallback as a workaround.

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      onPressed: onClick,
    );
  }
}
