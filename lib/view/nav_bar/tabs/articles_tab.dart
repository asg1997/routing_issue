import 'package:fa_piano/view/masterstvo_1_page.dart';
import 'package:flutter/material.dart';

/// This is the screen from where I want to navigate to target screen
class ArticlesTab extends StatelessWidget {
  const ArticlesTab({super.key});
  static const name = 'articles_tab';
  static const path = '/articles_tab';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              foregroundColor: Colors.white,
            ),
            child: Text('Target screen'),
            onPressed: () => Masterstvo1Page.navigate(context),
          ),
          SizedBox(height: 20),
          Text('Pushing this button does nothing'),
        ],
      ),
    ));
  }
}
