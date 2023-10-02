import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

import '../taps/home_tape.dart';
import '../taps/item_tap.dart';
import '../taps/person_tap.dart';
import '../taps/shop_tape.dart';
import '../theme/my_theme.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName = 'homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index =0;

  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar( ),
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          index=value;
          setState(() {

          });
        } ,
        items: [
          BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/home.png")),
              label:"." ,
              backgroundColor: MyTheme.whiteColor),
          BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/item.png")),
              label:"." ,
              backgroundColor: MyTheme.whiteColor),
          BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/shop.png"))
              ,label:".",
              backgroundColor: MyTheme.whiteColor),
          BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/person.png")),
              label:"." ,
              backgroundColor: MyTheme.whiteColor),
          BottomNavigationBarItem(icon:Icon(Icons.settings),label:"settings" ),
        ],
      ) ,
      body: tap[index],
     );
  }
  List<Widget> tap =[
    HomeTap(),
    ItemTap(),
    ShopTap(),
    ShopTap(),
    PersonTap(),
  ];

}
