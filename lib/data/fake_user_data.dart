import 'package:instargrame_assignment/model/card_item_data.dart';
import 'package:instargrame_assignment/model/user_data.dart';

final LoginUser loginUser = LoginUser(
  userImg: 'https://cdn.pixabay.com/photo/2015/03/03/20/42/man-657869__340.jpg',
  userName: '유신환',
  userAddress: '경기도 화성시',
  isLive: false,
);

final List<OtherUser> fakeUser = [
  OtherUser(
    userName: 'Aiden',
    userImg: 'https://cdn.pixabay.com/photo/2017/08/01/08/29/woman-2563491__340.jpg',
    userAddress: '미국 뉴욕',
    isLive: true,
  ),

  OtherUser(
    userName: 'Chistopher',
    userImg: 'https://cdn.pixabay.com/photo/2016/11/21/12/42/beard-1845166__340.jpg',
    userAddress: '프랑스 파리',
    isLive: true,
  ),

  OtherUser(
    userName: 'Connor',
    userImg: 'https://cdn.pixabay.com/photo/2016/11/18/19/07/happy-1836445__340.jpg',
    userAddress: '독일 베를린',
    isLive: true,
  ),

  OtherUser(
    userName: 'Everett',
    userImg: 'https://cdn.pixabay.com/photo/2017/08/01/08/29/woman-2563491__340.jpg',
    userAddress: '중국 베이징',
    isLive: true,
  ),
];

final List<CardItemData> fakeCardItems = [
  CardItemData(
    cardImageUrl: 'https://cdn.pixabay.com/photo/2021/11/21/16/00/sculpture-6814561__340.jpg',
    cardMainTxt: ' mainTxt1',
    cardTag: ' #MyItem1',
    cardTitle: 'cardItem1',
  ),
  CardItemData(
    cardImageUrl: 'https://cdn.pixabay.com/photo/2021/11/28/16/26/bike-6830708__340.jpg',
    cardMainTxt: ' mainTxt2',
    cardTag: ' #MyItem2',
    cardTitle: 'cardItem2',
  ),
  CardItemData(
    cardImageUrl: 'https://cdn.pixabay.com/photo/2018/03/12/12/32/woman-3219507__340.jpg',
    cardMainTxt: ' mainTxt3',
    cardTag: ' #MyItem3',
    cardTitle: 'cardItem3',
  ),
  CardItemData(
    cardImageUrl: 'https://cdn.pixabay.com/photo/2021/11/23/13/32/forest-6818683__340.jpg',
    cardMainTxt: ' mainTxt4',
    cardTag: ' #MyItem4',
    cardTitle: 'cardItem4',
  ),
  CardItemData(
    cardImageUrl: 'https://cdn.pixabay.com/photo/2020/09/15/20/35/couple-5574695__340.jpg',
    cardMainTxt: ' mainTxt5',
    cardTag: ' #MyItem5',
    cardTitle: 'cardItem5',
  ),
];

