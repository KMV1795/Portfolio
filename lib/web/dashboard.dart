import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/web/side_bar.dart';

import 'about_screen.dart';
import 'appbar.dart';

class WebDashboard extends StatefulWidget {
  const WebDashboard({Key? key}) : super(key: key);

  @override
  State<WebDashboard> createState() => _WebDashboardState();
}

class _WebDashboardState extends State<WebDashboard> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    bool isSmall = MediaQuery.of(context).size.width <= 600;
    bool isLarge = MediaQuery.of(context).size.width > 600;

    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: isLarge
          ? Container(
              margin: const EdgeInsets.only(left: 01, right: 01),
              child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CustomScrollView(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        slivers: [
                          MainAppBar(),
                          // AboutPage(),
                        ],
                      ),
                    ],
                  ),
            )
          : Container(
              child: Column(
                children: const [
                  CustomScrollView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    slivers: [
                      MainAppBar(),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
