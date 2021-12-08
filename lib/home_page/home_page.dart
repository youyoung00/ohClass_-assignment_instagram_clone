import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:instargrame_assignment/data/fake_datas.dart';
import 'package:instargrame_assignment/model/user_data.dart';

class HomePage extends StatefulWidget {



  HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Map<String, dynamic>> imgData = [
    {
      'img':
          'https://cdn.pixabay.com/photo/2021/11/21/16/00/sculpture-6814561__340.jpg',
      'icon': Icon(Icons.fiber_manual_record)
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2021/11/28/16/26/bike-6830708__340.jpg',
      'icon': Icon(Icons.fiber_manual_record)
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2018/03/12/12/32/woman-3219507__340.jpg',
      'icon': Icon(Icons.fiber_manual_record)
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2021/11/23/13/32/forest-6818683__340.jpg',
      'icon': Icon(Icons.fiber_manual_record)
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2020/09/15/20/35/couple-5574695__340.jpg',
      'icon': Icon(Icons.fiber_manual_record)
    }
  ];

  int _selectIndex = 0;

  PageController pageController = PageController();

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
                Container(
                  height: size.width / 3.2,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 90,
                        width: 74,
                        child: CircleAvatar(
                          backgroundImage:
                              NetworkImage(loginUser.userImg),
                        ),
                      ),
                      ...fakeUser.map((e) => Container(
                        // color: Colors.blue,
                        width: 74,
                        height: 90,
                        child: CircleAvatar(
                          backgroundImage:
                          NetworkImage(e.userImg),
                        ),
                      ),).toList(),
                        // Expanded(
                        //   child: ListView(
                        //     // physics: NeverScrollableScrollPhysics(),
                        //     scrollDirection: Axis.horizontal,
                        //     children: [
                        //       Column(
                        //         children: [
                        //           Padding(
                        //             padding: const EdgeInsets.symmetric(
                        //                 horizontal: 5, vertical: 5),
                        //             child: Stack(
                        //               children: [
                        //                 Container(
                        //                   // color: Colors.blue,
                        //                   width: 74,
                        //                   height: 90,
                        //                   child: CircleAvatar(
                        //                     backgroundImage:
                        //                         NetworkImage(widget.otherUser.userImg),
                        //                   ),
                        //                 ),
                        //                 // _avatarCheck(i),
                        //                 if (this.widget.otherUser.isLive)
                        //                   Positioned(
                        //                     bottom: -4,
                        //                     right: 16,
                        //                     child: Card(
                        //                       color: Colors.deepPurple,
                        //                       child: Padding(
                        //                         padding:
                        //                             const EdgeInsets.all(3.0),
                        //                         child: Text(
                        //                           "LIVE",
                        //                           style: TextStyle(
                        //                             color: Colors.white,
                        //                             fontSize: 12,
                        //                             fontWeight: FontWeight.bold,
                        //                           ),
                        //                         ),
                        //                       ),
                        //                     ),
                        //                   ),
                        //               ],
                        //             ),
                        //           ),
                        //           Container(
                        //             // color: Colors.red,
                        //             child: Text(
                        //               widget.otherUser.userName,
                        //               style:
                        //                   TextStyle(fontWeight: FontWeight.bold),
                        //             ),
                        //           )
                        //         ],
                        //       )
                        //     ],
                        //   ),
                        // ),
                    ],
                  ),
                ),
                _centerTopBar(),
                _centerImg(size: size),
                _centerBtmBar(size: size),
                _mainTxt(size: size, userName: loginUser.userName),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _btmBar());
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

  // Widget _circleAvatars({@required Size size}) {}

  // Widget _avatarCheck (int i){
  //   Widget checkedWidget = null;
  //
  //   if(user == avatarData[0]){
  //     checkedWidget = Container(
  //       // color: Colors.green,
  //         alignment: Alignment.bottomRight,
  //         width: 80,
  //         height: 82,
  //         child: Container(
  //           // color: Colors.red,
  //           width: 40,
  //           height: 30,
  //           child: FloatingActionButton(
  //             onPressed: (){},
  //             child: Icon(Icons.add,),
  //           ),
  //         ),
  //     );
  //   } else if (avatarData[i] == avatarData[1]){
  //     checkedWidget = Container(
  //       width: 80,
  //       height: 82,
  //       alignment: Alignment.bottomCenter,
  //       child: Card(
  //         color: Colors.purpleAccent,
  //         child: Padding(
  //           padding: const EdgeInsets.all(4.0),
  //           child: Text("LIVE",
  //             textAlign: TextAlign.center,
  //             style: TextStyle(
  //               color: Colors.white,
  //               fontSize: 10, fontWeight: FontWeight.bold
  //             ),
  //           ),
  //         ),
  //       ),
  //     );
  //   } else {
  //     checkedWidget = Container(
  //         alignment: Alignment.bottomRight,
  //         width: 80,
  //         height: 82,
  //         child: Container()
  //     );
  //   }
  //   return checkedWidget;
  // }

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
                    backgroundImage: NetworkImage(loginUser.userImg),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      loginUser.userName,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text('주소'),
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
        onPageChanged: (num) {
          setState(() {
            _selectIndex = num;
          });
        },
        itemCount: imgData.length,
        itemBuilder: (BuildContext context, int i) {
          return Container(
            child: Image.network(
              imgData[i]['img'],
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
                children: imgData.map((e) {
              return Container(
                  width: 14,
                  child: IconButton(
                      // icon: e['icon'],
                      onPressed: () {
                        pageController.jumpToPage(imgData.indexOf(e));
                        // print(e['icon']);
                        setState(() {
                          _selectIndex = imgData.indexOf(e);
                        });
                      },
                      icon: e['icon'],
                      iconSize: 12.0,
                      color: _selectIndex == imgData.indexOf(e)
                          ? Colors.blue
                          : Colors.grey));
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

  Widget _mainTxt({@required Size size, @required String userName}) {
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
              TextSpan(text: '', children: <TextSpan>[
                TextSpan(
                    text: userName,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                  text:
                      ''' I heard that you're settled down That you found a girl and you're married now I heard that your dreams came true Guess she gave you things, I didn't give to youOld friend, why are you so shy?Ain't like you to hold back or hide from the light I hate to turn up out of the blue, uninvited But I couldn't stay away, I couldn't fight it I had hoped you'd see my face And that you'd be reminded that for me, it isn't over Never mind, I'll find someone like youI wish nothing but the best for you''',
                ),
                TextSpan(
                  text: ' #Proud',
                  style: TextStyle(color: Colors.blue),
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
