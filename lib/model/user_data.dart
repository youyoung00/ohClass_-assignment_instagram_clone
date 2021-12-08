abstract class User {
  final String userImg;
  final String userName;
  final bool isLive;

  User({this.userImg, this.userName, this.isLive});
}

class OtherUser extends User {
  OtherUser({
    String userImg,
    String userName,
    bool isLive,
  }) : super(
          userName: userName,
          userImg: userImg,
          isLive: isLive,
        );
}

class LoginUser extends User {
  LoginUser({
    String userImg,
    String userName,
    bool isLive,
  }) : super(
          userImg: userImg,
          userName: userName,
          isLive: isLive,
        );
}

// abstract class User {
//   final String userImg;
//   final String userName;
//   final bool isLive;
//
//   User({this.userImg, this.userName, this.isLive});
// }
//
// class OtherUser extends User {
//   OtherUser({String userImg, String userName, bool isLive,}) : super(
//     userImg: userImg,
//     userName: userName,
//     isLive: isLive,
//   );
// }
//
// class LoginUser extends User {
//
//   LoginUser({String userImg, String userName, bool isLive,}) : super(
//     userName: userName,
//     userImg: userImg,
//     isLive: isLive,
//   );
// }

// 1. 추상화 클래스로 login 만들기
// 2. OtherUser / LoginUser 가 login 클래스에서 공통정의 된 내용을 상속받아서 사용.
// 3. homepage 에서 상속받아서 사용.
// 4.
