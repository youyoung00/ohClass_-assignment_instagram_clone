import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  List<String> avatarUrl = [
    'https://cdn.pixabay.com/photo/2018/01/21/14/16/woman-3096664__340.jpg',
    'https://cdn.pixabay.com/photo/2017/08/01/08/29/woman-2563491__340.jpg',
    'https://cdn.pixabay.com/photo/2018/03/12/12/32/woman-3219507__340.jpg',
    'https://cdn.pixabay.com/photo/2016/11/21/12/42/beard-1845166__340.jpg',
    'https://cdn.pixabay.com/photo/2016/11/18/19/07/happy-1836445__340.jpg'
  ];

  List<String> imgUrl = [
    'https://cdn.pixabay.com/photo/2021/11/21/16/00/sculpture-6814561__340.jpg',
    'https://cdn.pixabay.com/photo/2021/11/28/16/26/bike-6830708__340.jpg',
    'https://cdn.pixabay.com/photo/2018/03/12/12/32/woman-3219507__340.jpg',
    'https://cdn.pixabay.com/photo/2021/11/23/13/32/forest-6818683__340.jpg',
    'https://cdn.pixabay.com/photo/2020/09/15/20/35/couple-5574695__340.jpg'
  ];

  List<Widget> imgBtns = [];

  String userName = "Votres story";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: _topBar(),
        body: SingleChildScrollView(
          child: Container(
            width: size.width,
            child: Column(
              children: [
                circleAvatars(size: size),
                centerTopBar(),
                centerImg(size: size),
                centerBtmBar(size: size),
                mainTxt(size: size),
              ],
            ),
          ),
        ),
        bottomNavigationBar: btmBar());
  }

  Widget _topBar() {
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

  Widget circleAvatars({@required Size size}) {
    return Container(
      height: size.width / 3,
      // color: Colors.blue,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: avatarUrl.length,
          itemBuilder: (BuildContext context, int i) {
            return Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                  child: Container(
                    width: 80,
                    height: 80,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(avatarUrl[i]),
                    ),
                  ),
                ),
                Text(
                  "Votres story",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            );
          }),
    );
  }

  Widget centerTopBar() {
    return Container(
        padding: const EdgeInsets.only(
          top: 12,
        ),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 80,
                  child: CircleAvatar(
                    maxRadius: 25.0,
                    backgroundImage: NetworkImage(avatarUrl[1]),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Arneo Paris',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text('Arneo'),
                  ],
                ),
              ],
            ),
            Container(
              child: IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ));
  }

  Widget centerImg({@required Size size}) {
    return Container(
      height: size.height / 3.5,
      color: Colors.green,
      child: PageView.builder(
        itemCount: imgUrl.length,
        itemBuilder: (BuildContext context, int i) {
          return Container(
            child: Image.network(
              imgUrl[i],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }

  Widget centerBtmBar({@required Size size}) {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                  size: 32,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.black,
                  size: 32,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.send,
                  color: Colors.black,
                  size: 32,
                ),
                onPressed: () {},
              ),
            ],
          ),
          Container(
            width: size.width / 3,
            child: Row(
                children: imgUrl.map((String e) {
              return Container(
                  width: 14,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.fiber_manual_record,
                      size: 12,
                      color: Colors.grey,
                    ),
                  ));
            }).toList()),
          ),
          Container(
            child: IconButton(
              icon: Icon(
                Icons.bookmark_border,
                color: Colors.black,
                size: 32,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }

  Widget mainTxt({@required Size size}) {
    return Container(
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "I've watched those eyes light up with a smile",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              "${userName} I've watched those eyes light up with a smile River in the not good times Oh, you taught me all that I know (I know)",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget btmBar() {
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
            icon: Icon(
              Icons.featured_video_outlined,
              color: Colors.black,
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
