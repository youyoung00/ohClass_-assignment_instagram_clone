import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  List<String> avatarUrl = [
    'https://cdn.pixabay.com/photo/2018/01/21/14/16/woman-3096664__340.jpg',
    'https://cdn.pixabay.com/photo/2017/08/01/08/29/woman-2563491__340.jpg',
    'https://cdn.pixabay.com/photo/2018/03/12/12/32/woman-3219507__340.jpg',
    'https://cdn.pixabay.com/photo/2016/11/21/12/42/beard-1845166__340.jpg',
    'https://cdn.pixabay.com/photo/2016/11/18/19/07/happy-1836445__340.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: topBar(),
        body: SingleChildScrollView(
          child: Container(
            width: size.width,
            child: Column(
              children: [
                circleAvatars(size),
                Container(
                  padding: const EdgeInsets.only(top: 12,),
                  height: 90,
                  color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.red,
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
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text('Arneo'),
                        ],
                      ),
                      Container(
                        child: IconButton(
                         icon: Icon(Icons.more_horiz),
                        ),
                      )
                    ],
                  )
                ),
                Container(
                  height: size.height/3.5,
                  color: Colors.green,
                ),
                Container(
                  height: 90,
                  color: Colors.purple,
                ),
                Container(
                  height: size.width,
                  color: Colors.brown,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: btmBar());
  }

  Widget topBar(){
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
              Icons.favorite,
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
  Widget circleAvatars(size){
    return Container(
      height: size.width/3,
      // color: Colors.blue,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: avatarUrl.length,
          itemBuilder: (BuildContext context, int i){
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                  child: Container(
                    width: 80,
                    height: 80,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(avatarUrl[i]),
                    ),
                  ),
                ),
                Text("Votres story",
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                )
              ],
            );
          }
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
