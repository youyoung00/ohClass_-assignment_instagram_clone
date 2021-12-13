import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instargrame_assignment/data/fake_user_data.dart';
import 'package:instargrame_assignment/pages/album_page/album_page.dart';
import 'package:instargrame_assignment/pages/home_page/card_items/card_items.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: _appBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _userAvatars(size),
              Divider(
                thickness: 1.0,
              ),
              ...fakeCardItems.map((e) => CardItem(cardItemData: e)).toList(),
            ],
          ),
        ),
        bottomNavigationBar: _btmBar());
  }

  Widget _appBar() {
    return AppBar(
      backgroundColor: Colors.white10,
      elevation: 0.0,
      title: Text(
        "Instagram",
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
              color: Colors.black,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.send,
              color: Colors.black,
            )),
      ],
    );
  }

  Widget _userAvatars(size) {
    return SizedBox(
      height: 140,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 3),
                      // color: Colors.blue,
                      height: 90,
                      child: CircleAvatar(
                        radius: 34,
                        backgroundImage: NetworkImage(loginUser.userImg),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18)),
                        width: 36,
                        height: 36,
                      ),
                    ),
                    Positioned(
                      right: 2,
                      bottom: 2,
                      child: Container(
                        // color: Colors.green,
                        width: 32,
                        height: 32,
                        child: FloatingActionButton(
                          onPressed: () {},
                          child: Icon(Icons.add),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    // color: Colors.red,
                    child: Text(
                      loginUser.userName,
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ...fakeUser.map((e) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 90,
                    // color: Colors.blue,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.purple,
                          child: CircleAvatar(
                            radius: 37,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 34,
                              backgroundImage: NetworkImage(
                                e.userImg,
                              ),
                            ),
                          ),
                        ),
                        if (e.isLive)
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.purpleAccent,
                                border:
                                    Border.all(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                borderRadius: BorderRadius.circular(4)),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                "LIVE",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      // color: Colors.red,
                      child: Text(
                        e.userName,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: e.isLive ? FontWeight.bold : null
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }

  Widget _btmBar() {
    return DefaultTabController(
      length: 5,
      initialIndex: 1,
      child: TabBar(
        indicatorColor: Colors.transparent,
        unselectedLabelColor: Colors.grey,
        labelColor: Colors.black,
        tabs: [
          Tab(
            icon: Icon(Icons.home),
          ),
          Tab(
            icon: Icon(Icons.search),
          ),
          Tab(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AlbumPage()),
                );
              },
              child: Icon(
                Icons.featured_video_outlined,
              ),
            ),
          ),
          Tab(
            icon: Icon(Icons.add_shopping_cart_outlined),
          ),
          Tab(
            icon: Icon(Icons.account_circle),
          ),
        ],
        // BottomNavigationBar(
        //   type: BottomNavigationBarType.fixed,
        //   items: [
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           Icons.home,
        //           color: Colors.black,
        //         ),
        //         label: ""),
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           Icons.search,
        //           color: Colors.black,
        //         ),
        //         label: ""),
        //     BottomNavigationBarItem(
        //         icon: GestureDetector(
        //           onTap: () {
        //             Navigator.push(
        //               context,
        //               MaterialPageRoute(builder: (context) => AlbumPage(),
        //               ),
        //             );
        //           },
        //           child: Icon(
        //             Icons.featured_video_outlined,
        //             color: Colors.black,
        //           ),
        //         ),
        //         label: ""),
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           Icons.add_shopping_cart_outlined,
        //           color: Colors.black,
        //         ),
        //         label: ""),
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           Icons.account_circle,
        //           color: Colors.black,
        //         ),
        //         label: ""),
        //   ],
      ),
    );
  }
}
