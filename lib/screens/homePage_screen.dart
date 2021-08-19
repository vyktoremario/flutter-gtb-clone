import 'package:flutter/material.dart';
import 'package:gtb_clone/icon_item.dart';
import 'package:gtb_clone/widgets/icon_grid.dart';
import 'package:gtb_clone/widgets/icons.dart';

class GtHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<IconItem> _icons = [
      IconItem(
        icon: Icon(Icons.topic_outlined),
        title: "Quick Balance",
      ),
      IconItem(
        icon: Icon(Icons.sync_alt_rounded),
        title: "Quick Transfer",
      ),
      IconItem(
        icon: Icon(Icons.phone_iphone_outlined),
        title: "Quick Airtime",
      ),
      IconItem(
        icon: Icon(Icons.router_outlined),
        title: "Soft Token",
      ),
      IconItem(
        icon: Icon(Icons.supervisor_account_outlined),
        title: "Account Manager",
      ),
      IconItem(
        icon: Icon(Icons.account_balance_rounded),
        title: "Open Account",
      ),
    ];
    return Stack(children: [
      SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/background-img.jpeg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            drawer: Drawer(
              child: Container(
                color: Theme.of(context).primaryColor,
                child: Center(
                  child: Text(
                    "Drawer!",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            body: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 30),
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/gtblogo2.png',
                            height: 100,
                            width: 100,
                          ),
                          //
                          Text(
                            'GT World',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                  ),
                  Container(
                    height: 300,
                    child: IconGrid(_icons),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton(
                        height: 50,
                        minWidth: 200,
                        color: Theme.of(context).primaryColor,
                        onPressed: () {},
                        child: Text(
                          'Sign in GTWorld',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      FlatButton(
                        height: 50,
                        minWidth: 200,
                        color: Theme.of(context).primaryColor,
                        onPressed: () {},
                        child: Text(
                          'Sign in GAPSLite',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
