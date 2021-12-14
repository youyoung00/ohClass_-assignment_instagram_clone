import 'package:flutter/material.dart';
import 'package:instargrame_assignment/data/fake_user_data.dart';
import 'package:instargrame_assignment/model/card_item_data.dart';
import 'package:instargrame_assignment/model/user_data.dart';

class CardItem extends StatefulWidget {
  final CardItemData cardItemData;
  final OtherUser? otherUser;

  const CardItem({
    Key? key,
    required this.cardItemData,
    this.otherUser
  }) : super(key: key);

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  PageController pageController = PageController();

  int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        _cardTopBar(),
        _cardImg(size: size),
        _cardBtmBar(size: size),
        _cardMainTxt(size: size, userName: loginUser.userAddress),
      ],
    );
  }

  Widget _cardTopBar() {
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
                SizedBox(
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
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(loginUser.userAddress),
                  ],
                ),
              ],
            ),
            IconButton(
              icon: const Icon(
                Icons.more_horiz,
                color: Colors.black,
              ),
              onPressed: () {},
            )
          ],
        ));
  }

  Widget _cardImg({required Size size}) {
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
        itemCount: fakeCardItems.length,
        itemBuilder: (BuildContext context, int i) {
          return Image.network(
            fakeCardItems[i].cardImageUrl,
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }

  Widget _cardBtmBar({required Size size}) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                  size: 32,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.black,
                  size: 32,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.send,
                  color: Colors.black,
                  size: 32,
                ),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
            width: size.width / 3,
            child: Row(
                children: fakeCardItems.map((e) {
              return SizedBox(
                  width: 14,
                  child: IconButton(
                      onPressed: () {
                        pageController.jumpToPage(fakeCardItems.indexOf(e));
                        setState(() {
                          _selectIndex = fakeCardItems.indexOf(e);
                        });
                      },
                      icon: const Icon(Icons.fiber_manual_record),
                      iconSize: 12.0,
                      color: _selectIndex == fakeCardItems.indexOf(e)
                          ? Colors.blue
                          : Colors.grey));
            }).toList()),
          ),
          IconButton(
            icon: const Icon(
              Icons.bookmark_border,
              color: Colors.black,
              size: 32,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  Widget _cardMainTxt({
    required Size size,
    required String userName,
  }) {
    return SizedBox(
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              widget.cardItemData.cardTitle,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Text.rich(
              TextSpan(
                text: '',
                children: <TextSpan>[
                  TextSpan(
                      text: loginUser.userName,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                    text: widget.cardItemData.cardMainTxt,
                  ),
                  TextSpan(
                    text: widget.cardItemData.cardTag,
                    style: const TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            thickness: 1.0,
          )
        ],
      ),
    );
  }
}
