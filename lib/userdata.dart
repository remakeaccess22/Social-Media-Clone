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
}
