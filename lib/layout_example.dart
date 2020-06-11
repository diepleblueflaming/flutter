import 'package:flutter/material.dart';
import 'layouts/column_widget.dart';
import 'layouts/layout_challenge_1.dart';
import 'layouts/mi_card.dart';

class LayoutExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Example'),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: MiCard(),
      ),
    );
  }
}
