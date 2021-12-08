import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:instargrame_assignment/data/fake_user_data.dart';
import 'package:instargrame_assignment/model/card_item_data.dart';
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
              ...fakeCardItems.map((e) =>
              CardItem(
                cardItemData: e,
              )).toList(),
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
    return Container(
      width: size.width,
      child: Column(
        children: [
          Container(
            // color: Colors.blue,
            height: size.width / 3,
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
                            height: 90,
                            width: 74,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(loginUser.userImg),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(18)
                              ),
                              width: 36,
                              height: 36,
                            ),
                          ),
                          Positioned(
                            right: 1,
                            bottom: 1,
                            child: Container(
                              width: 34,
                              height: 34,
                              child: FloatingActionButton(
                                onPressed: () {},
                                child: Icon(Icons.add),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        // color: Colors.red,
                        padding: EdgeInsets.symmetric( vertical: 3.5),
                        // color: Colors.red,
                        child: Text(loginUser.userName),
                      ),
                    ],
                  ),
                ),
                ...fakeUser
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              // color: Colors.blue,
                              width: 74,
                              height: 90,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(e.userImg,
                                ),
                              ),
                            ),
                            Container(
                              // color: Colors.red,
                              padding: EdgeInsets.symmetric( vertical: 3.5),
                              // color: Colors.red,
                              child: Text(e.userName),
                            ),
                          ],
                        ),
                      ),
                    ).toList(),
              ],
            ),
          ),
          Divider(
            thickness: 1.0,
          )
        ],
      ),
    );
  }

  Widget _btmBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: Text("")),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            title: Text("")),
        BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AlbumPage(),
                  ),
                );
              },
              child: Icon(
                Icons.featured_video_outlined,
                color: Colors.black,
              ),
            ),
            title: Text("")),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.add_shopping_cart_outlined,
              color: Colors.black,
            ),
            title: Text("")),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Colors.black,
            ),
            title: Text("")),
      ],
    );
  }
}
