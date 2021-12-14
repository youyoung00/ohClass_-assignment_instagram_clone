class User {
  final String userImg;
  final String userName;
  final String userAddress;
  final bool isLive;

  User({
    required this.userImg,
    required this.userName,
    required this.isLive,
    required this.userAddress,
  });
}

class OtherUser extends User {
  OtherUser({
    required String userImg,
    required String userName,
    required bool isLive,
    required userAddress,
  }) : super(
          userName: userName,
          userImg: userImg,
          isLive: isLive,
          userAddress: userAddress,
        );
}

class LoginUser extends User {
  LoginUser({
    required String userImg,
    required String userName,
    required bool isLive,
    userAddress,
  }) : super(
          userImg: userImg,
          userName: userName,
          isLive: isLive,
          userAddress: userAddress,
        );
}
