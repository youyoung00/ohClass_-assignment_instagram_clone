
class User {
  final String userImg;
  final String userName;
  final String userAddress;
  final bool isLive;

  User({
    this.userImg,
    this.userName,
    this.isLive,
    this.userAddress,
  });
}

class OtherUser extends User {
  OtherUser({
    String userImg,
    String userName,
    bool isLive,
    userAddress,
  }) : super(
          userName: userName,
          userImg: userImg,
          isLive: isLive,
          userAddress: userAddress,
        );
}

class LoginUser extends User {
  LoginUser({
    String userImg,
    String userName,
    bool isLive,
    userAddress,
  }) : super(
          userImg: userImg,
          userName: userName,
          isLive: isLive,
          userAddress: userAddress,
        );
}

