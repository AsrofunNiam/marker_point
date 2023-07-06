import 'package:flutter/material.dart';

class CheckBoxIcon extends StatelessWidget {
  const CheckBoxIcon({
    super.key,
    required this.isTrue,
  });

  final bool isTrue;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Icon(
      isTrue == true ? Icons.check_circle : Icons.circle_outlined,
      color: theme.colorScheme.primary,
    );
  }
}
