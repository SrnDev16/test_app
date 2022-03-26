import 'package:flutter/material.dart';
import 'package:test_app/constants.dart';
import 'package:test_app/screen/body.dart';
import 'package:test_app/screen/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yellowPrimary,
      body: Stack(
        fit: StackFit.expand,
        children: const [
          Header(),
          Body()
        ],
      ),
    );
  }
}
