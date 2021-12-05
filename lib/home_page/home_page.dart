import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> avatarUrl = [
    'https://cdn.pixabay.com/photo/2018/01/21/14/16/woman-3096664__340.jpg',
    'https://cdn.pixabay.com/photo/2017/08/01/08/29/woman-2563491__340.jpg',
    'https://cdn.pixabay.com/photo/2018/03/12/12/32/woman-3219507__340.jpg',
    'https://cdn.pixabay.com/photo/2016/11/21/12/42/beard-1845166__340.jpg',
    'https://cdn.pixabay.com/photo/2016/11/18/19/07/happy-1836445__340.jpg'
  ];

  List<Map<String,dynamic>> imgInfo = [
    {
      'img' : 'https://cdn.pixabay.com/photo/2021/11/21/16/00/sculpture-6814561__340.jpg',
      'icon' : Icon(Icons.fiber_manual_record)
    },

    {
      'img' :  'https://cdn.pixabay.com/photo/2021/11/28/16/26/bike-6830708__340.jpg',
      'icon' : Icon(Icons.fiber_manual_record)
    },

    {
      'img' :  'https://cdn.pixabay.com/photo/2018/03/12/12/32/woman-3219507__340.jpg',
      'icon' : Icon(Icons.fiber_manual_record)
    },

    {
      'img' :  'https://cdn.pixabay.com/photo/2021/11/23/13/32/forest-6818683__340.jpg',
      'icon' : Icon(Icons.fiber_manual_record)
    },
    {
      'img' :  'https://cdn.pixabay.com/photo/2020/09/15/20/35/couple-5574695__340.jpg',
      'icon' : Icon(Icons.fiber_manual_record)
    }
  ];

  int _selectIndex = 0;

  String userName = "Votres story";

  PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

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
                _circleAvatars(size: size),
                _centerTopBar(),
                _centerImg(size: size),
                _centerBtmBar(size: size),
                _mainTxt(size: size),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _btmBar());
  }

  Widget _topBar() {
    return AppBar(
      backgroundColor: Colors.white,
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

  Widget _circleAvatars({@required Size size}) {
    return Container(
      height: size.width / 3,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: const Offset(
              0.0,
              0.0,
            ),
            blurRadius: 4.0,
            spreadRadius: 0.2,
          ), //BoxShadow
          BoxShadow(
            color: Colors.white,
            offset: const Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), //BoxShadow
        ],
      ),
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

  Widget _centerTopBar() {
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

  Widget _centerImg({@required Size size}) {
    return Container(
      height: size.height / 3.5,
      color: Colors.green,
      child: PageView.builder(
        controller: pageController,
        onPageChanged: (num){
          setState(() {
            _selectIndex = num;
          });
        },
        itemCount: imgInfo.length,
        itemBuilder: (BuildContext context, int i) {
          return Container(
            child: Image.network(
              imgInfo[i]['img'],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }

  Widget _centerBtmBar({@required Size size}) {
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
                children: imgInfo.map((e) {
              return Container(
                  width: 14,
                  child: IconButton(
                    // icon: e['icon'],
                    onPressed: () {
                      pageController.jumpToPage(imgInfo.indexOf(e));
                      // print(e['icon']);
                      setState(() {
                        _selectIndex = imgInfo.indexOf(e);
                      });
                    },
                    icon: e['icon'],
                    iconSize: 12.0,
                    color: _selectIndex == imgInfo.indexOf(e)
                        ? Colors.blue
                        : Colors.grey
                  )
                );
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

  Widget _mainTxt({@required Size size}) {
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
            child: Text.rich(
              TextSpan(text: '',
                children: <TextSpan>[
                TextSpan(text: userName,
                    style: TextStyle(fontWeight: FontWeight.bold)
                ),
                TextSpan(text: ''' I heard that you're settled down That you found a girl and you're married now I heard that your dreams came true Guess she gave you things, I didn't give to youOld friend, why are you so shy?Ain't like you to hold back or hide from the light I hate to turn up out of the blue, uninvited But I couldn't stay away, I couldn't fight it I had hoped you'd see my face And that you'd be reminded that for me, it isn't over Never mind, I'll find someone like youI wish nothing but the best for you''',),
                TextSpan(text: ' #Proud',
                  style: TextStyle(
                    color: Colors.blue
                  ),
                ),
              ]),
            ),
          ),
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
