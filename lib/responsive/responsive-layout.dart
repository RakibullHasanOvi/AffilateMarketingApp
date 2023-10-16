// ignore: file_names
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabletBody;

  // ignore: use_key_in_widget_constructors
  const ResponsiveLayout({
    required this.mobileBody,
    required this.tabletBody,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileBody;
        } else {
          return tabletBody;
        }
      },
    );
  }
}
