import 'package:flutter/material.dart';
import 'package:chips_choice/chips_choice.dart';
import '../theme/my_theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ShopTap extends StatefulWidget {

  @override
  State<ShopTap> createState() => _ShopTapState();
}
class _ShopTapState extends State<ShopTap> {
  int tag = 0;
  int pageIndex =0;
  int  activIndex =0;
  List<String> tags = [];

  List<String> options = [
    'News', 'Entertainment', 'Politics',
    'Automotive', 'Sports', 'Education',
    'Fashion', 'Travel', 'Food', 'Tech',
    'Science',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: MyTheme.chipsChoice,
      body: Padding(
        padding: const EdgeInsets.only(top: 16,right: 16,left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child:Image.asset ("assets/images/flower.png",
                  ),backgroundColor: MyTheme.trans,
                ),
                SizedBox(
                  width: 15,
                ),
                Text("AliceCare",
                    style: GoogleFonts.milonga(textStyle: Theme.of(context).textTheme.bodyMedium,)

                ),


              ],
            ),
            SizedBox(height: 20,),
            TextField(decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "Articles,Video,Audio And more",
              enabledBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black12))
            ),),
            SizedBox(height: 15,),
            ChipsChoice<String>.multiple(
              choiceStyle: C2ChipStyle(
                overlayColor: Colors.pink,
                    borderColor: Colors.black12,


                    //backgroundColor: MyTheme.chipsChoice,
                  foregroundColor: MyTheme.c1,
              ),
              direction :Axis.horizontal,


              spinnerColor:MyTheme.chipsChoice,
              spinnerSize: 80,
              value: tags,
              onChanged: (val) => setState(() => tags = val),

              choiceItems: C2Choice.listFrom<String, String>(

                source: options,
                value: (i, v) => v,
                label: (i, v) => v,
              ),

            ),
            Row(children: [
              Text("Hot topic",
                style: Theme.of(context).textTheme.bodyLarge,),
              Spacer(),
              Text("see all >",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.deepPurple)),

            ],),
            SizedBox(height: 10,),
            CarouselSlider(
              options: CarouselOptions(
                onPageChanged: (index, reason) {
                  setState(() {
                    activIndex=index;
                  });
                },
                height: 140,
                aspectRatio: 18/9,
                viewportFraction: 1,
                initialPage: pageIndex,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: false,
                autoPlayInterval: Duration(seconds: 1),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,

                scrollDirection: Axis.horizontal,
              )    ,
              items: ["assets/images/hot1.png",
                "assets/images/hot2.png",

              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          color: Colors.transparent
                      ),
                      child: Image(image: AssetImage(i)),

                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 10,),
            Row(children: [
              Text("Git Tips",
                style: Theme.of(context).textTheme.bodyLarge,),



            ],),
            SizedBox(height: 10,),
            CarouselSlider(
              options: CarouselOptions(
                onPageChanged: (index, reason) {
                  setState(() {
                    activIndex=index;
                  });
                },
                height: 140,
                aspectRatio: 18/9,
                viewportFraction: 1,
                initialPage: pageIndex,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: false,
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,

                scrollDirection: Axis.horizontal,
              )    ,
              items: ["assets/images/hot3.png",

              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          color: Colors.transparent
                      ),
                      child: Image(image: AssetImage(i)),

                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 20,),
            Row(children: [
              Text("Cycle Phases and period topic",
                style: Theme.of(context).textTheme.bodyLarge,),
              Spacer(),
              Text("see all >",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.deepPurple)),

            ],),
          ]

        ),
      ),
    );
  }
}
