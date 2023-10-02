import 'package:flutteer_test/theme/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import '../tappar/tap1.dart';
class ItemTap extends StatelessWidget {
  static const String routeName = 'f';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                CircleAvatar(
                    child: Image.asset(
                  "assets/images/girl.png",
                )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("hellow, jada",
                          style: Theme.of(context).textTheme.labelSmall),
                      Text("Redy to work?",
                          style: Theme.of(context).textTheme.displayLarge),
                    ],
                  ),
                ),
                Spacer(),
                badges.Badge(
                  child: Icon(
                    Icons.notifications_none_sharp,
                    size: 35,
                    color: Colors.black,
                  ), //icon style
                  badgeContent: SizedBox(
                      width: 30,
                      height: 2, //badge size
                      child: Center(
                        //aligh badge content to center
                        child: Text(
                          '',
                        ),
                      )),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 82,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(240, 249, 255, 1),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.heart_broken,
                                    size: 20, color: Colors.deepPurpleAccent),
                                Text(
                                  "Heart rate ",
                                  style: Theme.of(context).textTheme.labelSmall,
                                )
                              ],
                            ),
                            Text(
                              "81 pm",
                              style: Theme.of(context).textTheme.displayLarge,
                            )
                          ],
                        ),
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.orange,
                      thickness: 2,
                      indent: 5,
                      endIndent: 5,
                    ),
                    Center(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.menu,
                                color: Colors.deepPurpleAccent,
                                size: 20,
                              ),
                              Text(
                                "To-do ",
                                style: Theme.of(context).textTheme.labelSmall,
                              )
                            ],
                          ),
                          Text(
                            "32.5%",
                            style: Theme.of(context).textTheme.displayLarge,
                          )
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.orange,
                      thickness: 2,
                      indent: 5,
                      endIndent: 5,
                    ),
                    Expanded(
                      child: Center(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.local_fire_department_outlined,
                                  color: Colors.deepPurpleAccent,
                                  size: 20,
                                ),
                                Text(
                                  "Calo ",
                                  style: Theme.of(context).textTheme.labelSmall,
                                )
                              ],
                            ),
                            Text(
                              "1000 cal",
                              style: Theme.of(context).textTheme.displayLarge,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Work out programing",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Expanded(
              child: DefaultTabController(
                key: key,
                length: 4,
                child: Container(
                  height: 500,
                  child: Column(
                    children: [
                      TabBar(
                        indicatorColor: MyTheme.tapbarColor,
                        indicatorSize: TabBarIndicatorSize.label,
                        tabs: [
                          Tab(
                            text: "All type",
                          ),
                          Tab(
                            text: "Full body",
                          ),
                          Tab(
                            text: "Upper",
                          ),
                          Tab(
                            text: "Lower",
                          )
                        ],
                      ),
                      Expanded(
                        child: Container(
                          height: double.infinity,
                          child: TabBarView(
                            children: [
                              TapParPage1(),
                              TapParPage1(),
                              TapParPage1(),
                              TapParPage1(),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
