import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSmall = MediaQuery.of(context).size.width <= 600;
    bool isLarge = MediaQuery.of(context).size.width > 600;

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (_, int index) {
          return isLarge
              ? Container(
                margin: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Colors.white70,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [],
                    ),
                    Container(),
                  ],
                ),
              )
              : Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Colors.white70,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [],
                    ),
                    Container(),
                  ],
                ),
              );
        },
      ),
    );
  }
}
