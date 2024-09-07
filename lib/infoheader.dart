import 'package:flutter/material.dart';
import 'userdata.dart';

class Infoheader extends StatelessWidget {
  Infoheader({
    Key? key,
    required this.userData,
  });
  final UserData userData;
  var followTxtStyle = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Followers'),
            Text('Posts'),
            Text('Following'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              userData.myUserAccount.numFollowers,
              style: followTxtStyle,
            ),
            Text(
              userData.myUserAccount.numPosts,
              style: followTxtStyle,
            ),
            Text(
              userData.myUserAccount.numFollowing,
              style: followTxtStyle,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Divider(
          color: Colors.grey,
        ),
      ],
    );
  }
}
