import 'package:flutter/material.dart';
import 'friendlist.dart';
import 'infoheader.dart';
import 'mainheader.dart';
import 'postslist.dart';
import 'userdata.dart';

class SocialMedia extends StatefulWidget {
  const SocialMedia({Key? key});

  @override
  _SocialMediaState createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  UserData userData = UserData();
  var followTxtStyle = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Mainheader(userData: userData),
          Infoheader(userData: userData),
          Friendlist(userData: userData),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Text(
                  'Posts',
                  style: followTxtStyle,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          PostsList(userData: userData),
        ],
      ),
    );
  }
}
