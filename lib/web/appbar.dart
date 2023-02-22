import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    bool isSmall = MediaQuery.of(context).size.width <= 600;
    bool isLarge = MediaQuery.of(context).size.width > 600;

    return SliverAppBar(
      snap: false,
      pinned: true,
      floating: false,
      title: const Text("Mohana Vaishali",
          style: TextStyle(
          color: Colors.white,
          fontSize: 15.0,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.italic
      ),),
      leading: Container(
        width:30,
        height: 30,
        margin:const EdgeInsets.all(05),
        decoration:const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/butterfly.jpg"),
                fit: BoxFit.fitWidth,
            ),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
            "assets/images/banner2.jpg",
            fit: BoxFit.cover,
          ) //Images.network
      ), //FlexibleSpaceBar
      expandedHeight: 230,
      backgroundColor: Colors.greenAccent[400],
      actions: isSmall? <Widget>[
        IconButton(
          icon: const Icon(Icons.account_box_outlined,color: Colors.white,size: 30,),
          tooltip: 'About',
          onPressed: () {},
        ), //IconButton
        IconButton(
          icon: const Icon(Icons.list,color: Colors.white,size: 30,),
          tooltip: 'Projects',
          onPressed: () {},
        ), //I
        IconButton(
          icon: const Icon(Icons.contacts_sharp,color: Colors.white,size: 30,),
          tooltip: 'Contacts',
          onPressed: () {},
        ),//IconButton
      ]
      : <Widget>[
       const SizedBox(width: 20,),
        OutlinedButton(
          style: ElevatedButton.styleFrom(textStyle: const TextStyle(color:Colors.white,fontSize: 18),foregroundColor: Colors.white, padding: const EdgeInsets.all(16.0),),
          onPressed: () {},
          child: const Text("About",)
        ),
        const SizedBox(width: 20,),
        OutlinedButton(
            style:ElevatedButton.styleFrom(textStyle: const TextStyle(color:Colors.white,fontSize: 18),foregroundColor: Colors.white, padding: const EdgeInsets.all(16.0),),
            onPressed: () {},
            child: const Text("Projects",)
        ),
        const SizedBox(width: 20,),
        OutlinedButton(
            style: ElevatedButton.styleFrom(textStyle: const TextStyle(color:Colors.white,fontSize: 18),foregroundColor: Colors.white, padding: const EdgeInsets.all(16.0),),
            onPressed: () {},
            child: const Text("Contact",)
        ),
        const SizedBox(width: 20,),
      ], //<Widget>[]
    );
  }
}
