import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       width: 300,
       height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10),),
         color: Colors.lightBlue.shade900,
      ),
      child: Column(
        children: [
          firstBox()
        ],
      ),
    );
  }

  Widget firstBox(){
    return Container(
      child: Column(
        children: [
          RichText(
              text: const TextSpan(
                text: "Email",
                children: [
                  TextSpan(text: "mohanavaishali.kp@gmail.com"),
                ]
              ),
          ),
          RichText(
            text: const TextSpan(
                text: "Phone",
                children: [
                  TextSpan(text: "8608669959"),
                ]
            ),
          ),
        ],
      ),
    );
  }
}
