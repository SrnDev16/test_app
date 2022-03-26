import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/constants.dart';

class Content extends StatefulWidget {
  const Content({Key? key}) : super(key: key);

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  int a = 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        const Text(
          "Fruit nutrition meal",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Row(
          children: const [
            Icon(
              CupertinoIcons.star_fill,
              color: mint,
              size: 18,
            ),
            SizedBox(width: 10),
            Text("4.5"),
            SizedBox(width: 10),
            Text("123 comments"),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _sectionNormal(
                icon: CupertinoIcons.circle,
                color: Colors.yellow[500],
                title: "Normal"),
            _sectionNormal(
              icon: CupertinoIcons.location,
              color: mint,
              title: "1.7Km",
            ),
            _sectionNormal(
              icon: CupertinoIcons.clock,
              color: Colors.orange,
              title: "32min",
            ),
          ],
        ),
        const SizedBox(height: 20),
        _buildIntriduce(),
        _buildBtnExpand(),
        _buildFooter(),
      ],
    );
  }

  Container _buildFooter() {
    final verticalDivider = VerticalDivider(
      indent: 5,
      endIndent: 5,
      thickness: 1.5,
      width: 24,
      color: Colors.grey[300],
    );
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      a--;
                      if (a < 0) {
                        a = 0;
                      }
                    });
                  },
                  icon: const Icon(
                    CupertinoIcons.minus,
                    color: Colors.grey,
                    size: 15,
                  ),
                ),
                Text(
                  "$a",
                  style: const TextStyle(fontSize: 15),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      a++;
                    });
                  },
                  icon: const Icon(
                    CupertinoIcons.plus,
                    color: Colors.grey,
                    size: 15,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: mint,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: mint,
                  spreadRadius: 0.5,
                  blurRadius: 9,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: IntrinsicHeight(
              child: InkWell(
                onTap: (){print("add");},
                child: Row(
                  children: [
                    const Text(
                      "\$28",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    verticalDivider,
                    const Text(
                      "Add to cart",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  InkWell _buildBtnExpand() {
    return InkWell(
      onTap: () {
        print("Expand");
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: const [
            Text(
              "Expand",
              style: TextStyle(color: mint),
            ),
            SizedBox(width: 10),
            Icon(
              CupertinoIcons.chevron_down,
              color: mint,
            )
          ],
        ),
      ),
    );
  }

  ListTile _buildIntriduce() {
    return const ListTile(
      title: Text(
        "Introduce",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
      subtitle: Text(
        "The pasts in the picture USES alkaline noodle, which many people are not very familiar with. The sauce is also very popular with the local people. if",
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  Row _sectionNormal({IconData? icon, Color? color, String? title}) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
        ),
        SizedBox(width: 10),
        Text(title!)
      ],
    );
  }
}
