import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';
import '../theme/my_theme.dart';
import 'package:chips_choice/chips_choice.dart';
class HomeTap extends StatefulWidget {
  @override
  State<HomeTap> createState() => _HomeTapState();
}

class _HomeTapState extends State<HomeTap> {
  int tag = 0;

  List<String> tags = [];

  List<String> options = [
    'Relaxation', 'Miditation',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Container(
          width: double.infinity,
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
            Container(
              decoration: BoxDecoration(
                  color: MyTheme.whiteColor,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  ImageIcon(AssetImage("assets/images/img.png")),
                  Text("Moody"),
                  Spacer(),
                  badges.Badge(
                    child: Icon(
                      Icons.notifications,
                      size: 40,
                      color: Colors.grey,
                    ), //icon style
                    badgeContent: SizedBox(
                        width: 35,
                        height: 5, //badge size
                        child: Center(
                          //aligh badge content to center
                          child: Text(
                            '',
                          ),
                        )),
                  ),
                ],
              ),
            ),
         Row(children: [
           Text(
             "hellow ",
             style: Theme.of(context).textTheme.bodySmall,
           ),
           Text(
             "Sara rose",
             style: Theme.of(context).textTheme.bodyMedium,
           )
         ],),
                Text(textAlign: TextAlign.start,
                  "how are u felling today",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Row(children: [
                  Expanded(
                    child: Column(children: [
                      CircleAvatar(
                          child:Image.asset ("assets/images/emo1.png",)),
                      Text("love",
                        style: Theme.of(context).textTheme.bodySmall,
                      )
                    ],),
                  ),
                  Expanded(
                    child: Column(children: [
                      CircleAvatar(
                        child:Image.asset ("assets/images/emo2.png",)),
                      Text("cool",
                          style: Theme.of(context).textTheme.bodySmall,
                  )
                    ],),
                  ),
                  Expanded(
                    child: Column(children: [
                      CircleAvatar(
                          child:Image.asset ("assets/images/emo3.png",)),
                      Text("hapy",
                        style: Theme.of(context).textTheme.bodySmall,
                      )
                    ],),
                  ),
                  Expanded(
                    child: Column(children: [
                      CircleAvatar(
                          child:Image.asset ("assets/images/emo4.png",)),
                      Text("sad",
                        style: Theme.of(context).textTheme.bodySmall,
                      )
                    ],),
                  ),
                ],),
                Row(children: [
                  Text("feature",
                  style: Theme.of(context).textTheme.bodyMedium,),
                  Spacer(),
                  Text("read more >",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.green)),

                ],),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 140,
                    aspectRatio: 16/9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 1),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,

                    scrollDirection: Axis.horizontal,
                  )    ,
                  items: ["assets/images/feature.png",
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                                color: Colors.transparent
                            ),
                            child: Image(image: AssetImage(i))
                        );
                      },
                    );
                  }).toList(),
                ),
                Row(children: [
                  Text("Exersice",
                    style: Theme.of(context).textTheme.bodyMedium,),
                  Spacer(),
                  Text("read more >",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.green)),




                ],),
                Row(children: [
  Column(children: [
    Container(
      width: 150,
      height: 70,
      decoration: BoxDecoration(
      color: Colors.grey,
      borderRadius: BorderRadius.circular(10)
    ),
      child: Row(
        children: [
          ImageIcon(AssetImage("assets/images/ex1.png",),
            color: Colors.deepPurpleAccent,
          size: 20,),
          SizedBox(width:20 ,),
          Text("Relaxerd",
          style: Theme.of(context).textTheme.bodyMedium,)
        ],
      ),
    ),
    SizedBox(height:20 ,),
    Container(
      width: 150,
      height: 70,
      decoration: BoxDecoration(
          color: Color.fromRGBO(253, 242, 250, 1),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          ImageIcon(AssetImage("assets/images/ex2.png",),
            color: Colors.purpleAccent,
            size: 20,),
          SizedBox(width:20 ,),
          Text("Beathing",
            style: Theme.of(context).textTheme.bodyMedium,)
        ],
      ),
    ),
  ],),
  SizedBox(width: 20,),
  Column(children: [
    Container(
      width: 150,
      height: 70,
      decoration: BoxDecoration(
          color: Color.fromRGBO(253, 242, 250, 1),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          ImageIcon(AssetImage("assets/images/ex3.png",),
            color: Colors.pink,
            size: 20,),
          SizedBox(width:20 ,),
          Text("Relaxerd",
            style: Theme.of(context).textTheme.bodyMedium,)
        ],
      ),
    ),
    SizedBox(height:20 ,),
    Container(
      width: 150,
      height: 70,
      decoration: BoxDecoration(
          color: Color.fromRGBO(240, 249, 255, 1),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          ImageIcon(AssetImage("assets/images/ex4.png",),
            color: Colors.purpleAccent,
            size: 20,),
          SizedBox(width:20 ,),
          Text("Beathing",
            style: Theme.of(context).textTheme.bodyMedium,)
        ],
      ),
    ),
  ],)
],)



          ]),
        ),
      ),
    );
  }
}
