import 'user_model.dart';

class Twt {
  User user;
  String twt;
  String image;
  int likes;
  int retwts;
  int comments;
  int timestamp;
  bool retwted;
  bool liked;

  Twt(this.user, this.twt, this.image, this.likes, this.liked, this.retwts, this.retwted, this.comments,
      this.timestamp);
}
