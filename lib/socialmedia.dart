import 'package:flutter/material.dart';
import 'package:smclone/friend.dart';
import 'package:smclone/friendlist.dart';
import 'package:smclone/infoheader.dart';
import 'package:smclone/mainheader.dart';
import 'userdata.dart';

class SocialMedia extends StatefulWidget {
  const SocialMedia({Key? key});

  @override
  _SocialMediaState createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  UserData userData = UserData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Mainheader(userData: userData),
          Infoheader(userData: userData),
          Friendlist(userData: userData),
        ],
      ),
    );
  }
}
