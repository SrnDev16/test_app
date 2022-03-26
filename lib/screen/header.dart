import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/constants.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
            child: Image.asset("assets/images/meal.png"),
          ),
          _buildBackIcon(
            onPressed: (){print("back");},
          ),
          _buildShopIcon(
            onPressed: () {print("shop_cart");},
            notification: 2,
          ),
        ],
      ),
    );
  }

  Positioned _buildShopIcon({VoidCallback? onPressed, int? notification = 0}) {
    return Positioned(
      top: 10,
      right: 30,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          decoration:
              const BoxDecoration(color: Colors.white54, shape: BoxShape.circle),
          child: Stack(
            children: [
             const Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(CupertinoIcons.shopping_cart,size: 30,),
              ),
              notification == 0
                  ? const SizedBox()
                  : Positioned(
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: mint,
                          border: Border.all(color: Colors.white),
                        ),
                        constraints:
                            const BoxConstraints(minWidth: 22, minHeight: 22),
                        child: Text(
                          "$notification",
                          style:
                              const TextStyle(color: Colors.white, fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Positioned _buildBackIcon({VoidCallback? onPressed}) {
    return Positioned(
      top: 10,
      left: 30,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white54,
            shape: BoxShape.circle,
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(CupertinoIcons.back,size: 30,),
          ),
          ),
      ),
      );
  }
}
