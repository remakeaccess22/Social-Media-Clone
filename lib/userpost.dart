class UserPost {
  final String userimg;
  final String username;
  final String time;
  final String postcontent;
  final String postimg;
  final String numcomments;
  final String numshare;
  bool isLiked;

  UserPost({
    this.userimg,
    this.username,
    this.time,
    this.postcontent,
    this.postimg,
    this.numcomments,
    this.numshare,
    this.isLiked,
  });
}
