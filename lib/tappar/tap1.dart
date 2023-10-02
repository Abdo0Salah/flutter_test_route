import 'package:flutter/material.dart';
class TapParPage1 extends StatefulWidget {
  @override
  State<TapParPage1> createState() => _TapParPage1State();
}
class _TapParPage1State extends State<TapParPage1> {
  List<Widget> type = [
     Image(image: AssetImage("assets/images/all_type.png")),
     Image(image: AssetImage("assets/images/all_type2.png")),
    Image(image: AssetImage("assets/images/all_type.png")),
    Image(image: AssetImage("assets/images/all_type2.png")),
    Image(image: AssetImage("assets/images/all_type.png")),
    Image(image: AssetImage("assets/images/all_type2.png")),
  ];

  @override
  Widget build(BuildContext context) {
    return
      ListView.separated(
      separatorBuilder: (context, index) => SizedBox(
          height: 30,
        ),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Container(child: type[index]);
      },
      itemCount: type.length,
    );
  }
}
