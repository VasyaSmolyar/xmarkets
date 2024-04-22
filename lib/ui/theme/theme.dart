import 'package:flutter/material.dart';

final _theme = ThemeData(
  primaryColor: const Color(0x000D161F),
);

final themeData = _theme.copyWith(
  textTheme: _theme.textTheme.copyWith(
    bodyLarge: const TextStyle(
      color: Colors.white
    )
  ),
  colorScheme: _theme.colorScheme.copyWith(
    secondary: const Color(0x0019222B),
    background: const Color(0x0019222B)
  ),
);
