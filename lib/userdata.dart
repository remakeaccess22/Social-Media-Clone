import 'friend.dart';
import 'usercomment.dart';
import 'userpost.dart';
import 'account.dart';

class UserData {
  List<UserPost> userList = [
    UserPost(
      userimg: 'assets/Bien.jpg',
      username: 'Bien Manalo',
      time: '2 hours ago',
      postcontent: 'Time is Gold',
      postimg: 'assets/Flutter_Images.jpg',
      numcomments: '8.5k comments',
      numshare: '90 shares',
      isLiked: false,
    ),
    UserPost(
      userimg: 'assets/Ramiel.jpg',
      username: 'Ramiel Rasonado',
      time: '1 hr ago',
      postcontent: 'Bling bling Lights owaaaaaw!',
      postimg: 'assets/Flutter_Images_1.jpg',
      numcomments: '900 comments',
      numshare: '1k shares',
      isLiked: false,
    ),
    UserPost(
      userimg: 'assets/Donald.jpg',
      username: 'Donald Macasampon',
      time: '20 Nov at 9:30 PM',
      postcontent: 'Brrrt Brrttt Brrrtttt',
      postimg: 'assets/Flutter_Images_3.jpg',
      numcomments: '32 comments',
      numshare: '11 shares',
      isLiked: false,
    )
  ];

  List<Friend> friendList = [
    Friend(
      img: 'assets/Bien.jpg',
      name: 'Bien Manalo',
    ),
    Friend(
      img: 'assets/Ramiel.jpg',
      name: 'Ramiel Rasonado',
    ),
    Friend(
      img: 'assets/Donald.jpg',
      name: 'Donald Macasampon',
    ),
    Friend(
      img: 'assets/Cedric.png',
      name: 'Cedrick Caceres',
    ),
    Friend(
      img: 'assets/Renvic.jpg',
      name: 'Renvic Emenido',
    ),
    Friend(
      img: 'assets/Robert.jpg',
      name: 'Robert Falle',
    ),
  ];

  List<UserComment> commentList = [
    UserComment(
      commenterImg: 'assets/Bien.jpg',
      commenterName: 'Bien Manalo',
      commentTime: '3w',
      commentContent: 'Nice one!',
    ),
    UserComment(
      commenterImg: 'assets/Cedrick.jpg',
      commenterName: 'Cedrick Caceres',
      commentTime: '5w',
      commentContent: 'NgekNgok!',
    ),
    UserComment(
      commenterImg: 'assets/Ramiel.jpg',
      commenterName: 'Ramiel Rasonado',
      commentTime: '7w',
      commentContent: 'Watahel!',
    ),
  ];

  Account myUserAccount = Account(
    name: 'Bien Manalo',
    email: 'bienmanalo@gmail.com',
    img: 'assets/Bien.jpg',
    numFollowers: '1.5k',
    numPosts: '2.5k',
    numFollowing: '1.2k',
    numFriends: '1.8k',
  );
}
