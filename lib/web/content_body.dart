import 'package:flutter/cupertino.dart';

class ContentBody extends StatefulWidget {
  const ContentBody({Key? key}) : super(key: key);

  @override
  State<ContentBody> createState() => _ContentBodyState();
}

class _ContentBodyState extends State<ContentBody> {

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (_, int index) {
          return ListView(
            children: const [

            ],
          );
        },
      ),
    );
  }
}
