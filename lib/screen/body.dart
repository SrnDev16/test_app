import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/constants.dart';
import 'package:test_app/screen/content.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.topRight,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            width: sized(context).width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: const Content(),
          ),
          _buildIconHeart()
        ],
      ),
    );
  }

  Positioned _buildIconHeart() {
    return Positioned(
      right: 50,
      top: -20,
      child: Container(
        decoration: const BoxDecoration(
          color: mint,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: mint,
              spreadRadius: 0.5,
              blurRadius: 9,
              offset: Offset(0,4),
            ),
          ],
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            CupertinoIcons.heart_solid,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}
