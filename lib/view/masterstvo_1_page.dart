import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Target page where I want to go
class Masterstvo1Page extends StatelessWidget {
  const Masterstvo1Page({super.key});

  static const name = 'masterstvo1';
  static const path = 'masterstvo1';
  static void navigate(BuildContext context) => context.pushNamed(name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('Masterstvo 1'));
  }
}
