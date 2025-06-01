import 'package:flutter/material.dart';

class AdviceField extends StatelessWidget {
  const AdviceField({super.key, required this.advice});
  final String advice;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    // TODO: implement build
    return Material(
      elevation: 20,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: themeData.colorScheme.onPrimary,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Text(
            advice,
            style: themeData.textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
