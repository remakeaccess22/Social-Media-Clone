import 'package:flutter/material.dart';
import 'userdata.dart';
import 'usercomment.dart';
import 'userpost.dart';

class Profileview extends StatelessWidget {
  Profileview({
    super.key,
    required this.userPost,
  });

  final UserPost userPost;
  final UserPost userData = UserData();

  var nametxtStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );
  var boldtxtStyle = const TexStyle(
    FontWeight: FontWeight.bold,
  );
  var boldtxtStyle1 = const TexStyle(
    FontWeight: FontWeight.bold,
    fontSize: 16,
  );
  Widget commentBtn(UserComment userComment) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(userComment.commentTime),
            const SizedBox(width: 15),
            const Text('Like'),
            const SizedBox(width: 15),
            const Text('Reply'),
          ],
        ),
      );

  Widget commentDesc(UserComment userComment) => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(userComment.commenterName, style: boldtxtStyle),
            const SizedBox(height: 5),
            Row(
              children: [
                Text(userComment.commentContent),
              ],
            )
          ],
        ),
      );
  Widget commentSpace(UserComment userComment) => Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(35, 158, 158, 158),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: commentDesc(userComment),
      );

  Widget commentPic(UserComment userComment) => Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(userComment.commenterImg),
        ),
      );
  Widget usercommenterline(UserPost userPost, UserComment userComment) => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          commenterPic(userComment),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              commentSpace(userComment),
              commentBtn(userComment),
            ],
          )
        ],
      );
  Widget userpostdetails(UserComment userComment) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          usercommenterline(userPost, userComment),
        ],
      );
  Widget commenters(UserPost userPost) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Divider(color: Color.fromARGB(86, 158, 158, 158)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(userPost.numShare, style: boldtxtStyle),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text('All comments', style: boldtxtStyle1),
                const Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
          const SizedBox(height: 15),
        ],
      );

  Widget buttons(UserPost userPost) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Divider(color: Color.fromARGB(86, 158, 158, 158)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  style: TextButton.styleFrom(
                      foregroundColor:
                          (!userPost.isLiked) ? Colors.grey : Colors.blue),
                  onPressed: () {},
                  icon: const Icon(Icons.thumb_up, size: 20),
                  label: const Text('Like'),
                ),
                TextButton.icon(
                  style: TextButton.styleFrom(foregroundColor: Colors.grey),
                  onPressed: () {},
                  icon: const Icon(Icons.thumb_up, size: 20),
                  label: const Text('Comment'),
                ),
                TextButton.icon(
                  style: TextButton.styleFrom(foregroundColor: Colors.grey),
                  onPressed: () {},
                  icon: const Icon(Icons.thumb_up, size: 20),
                  label: const Text('Comment'),
                ),
              ],
            ),
          ),
          const Divider(color: Color.fromARGB(86, 158, 158, 158)),
        ],
      );

  Widget userline(UserPost userPost) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(userPost.userimg),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(userPost.username, style: nametxtStyle),
              Row(
                children: [
                  Text(userPost.time),
                  const Text(' . '),
                  const Icon(Icons.group, size: 15, color: Colors.grey),
                ],
              ),
            ],
          ),
        ],
      );

  Widget postimage(UserPost userPost) => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(userPost.postcontent),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(userPost.postimg),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      );
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        leading:IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
        ),
      ),
  body: ListView(
    children: [
      userline(userPost),
      postimage(userPost),
      buttons(userPost),
      commenters(userPost),
     ListView(
      shrinkWrap: true,
      children: userData.commentList.map((userComment){
        return userpostdetails(userComment);
      }).tolist(),
     ),
    ],
  ),
    );
  }
}





































  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
