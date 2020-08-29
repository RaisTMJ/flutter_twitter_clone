
import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'tweet_model.dart';

class ComposeTwt extends StatefulWidget {
  final context;
  final user;

  const ComposeTwt({Key key, this.context, this.user}) : super(key: key);

  @override
  _ComposeTwtState createState() => _ComposeTwtState();
}

class _ComposeTwtState extends State<ComposeTwt> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(widget.context).primaryColorDark,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkResponse(child: Icon(Icons.close, color: Colors.blue), onTap: () => Navigator.of(context).pop()),
                Expanded(child: SizedBox()),
                RaisedButton(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  onPressed: _controller.text.isNotEmpty
                      ? () {
                    Navigator.of(context).pop(Twt(
                      widget.user,
                      _controller.text,
                      null,
                      0,
                      false,
                      0,
                      false,
                      0,
                      DateTime.now().millisecondsSinceEpoch,
                    ));
                  }
                      : null,
                  child: Text('Tweet', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
                  color: Colors.blue,
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(18)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network(widget.user.avatar, fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: TextField(
                      maxLines: 10,
                      maxLength: 240,
                      controller: _controller,
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        hintText: 'What\'s happening?',
                        hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.only(left: 0, right: 0, bottom: 0, top: 8),
                        counterText: '',
                        counterStyle: TextStyle(fontSize: 0),
                      ),
                      onChanged: (text) {
                        setState(() {});
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//Widget twtWidget(Twt twt, bool smallDevice) {
//  return Container(
//    child: Column(
//      children: [
//        Container(
//          padding: const EdgeInsets.all(12),
//          child: Row(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: [
//              Container(
//                width: smallDevice ? 40 : 50,
//                height: smallDevice ? 40 : 50,
//                decoration: BoxDecoration(borderRadius: BorderRadius.circular(smallDevice ? 20 : 25)),
//                child: ClipRRect(
//                  borderRadius: BorderRadius.circular(smallDevice ? 20 : 25),
//                  child: Image.asset(twt.user.avatar, fit: BoxFit.cover),
//                ),
//              ),
//              SizedBox(width: 12),
//              Expanded(
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  children: [
//                    Row(
//                      mainAxisSize: MainAxisSize.min,
//                      crossAxisAlignment: CrossAxisAlignment.center,
//                      children: [
//                        Text(twt.user.name,
//                            style: TextStyle(fontWeight: FontWeight.w600, fontSize: smallDevice ? 12 : 14)),
//                        Visibility(
//                          visible: twt.user.verified,
//                          child: Row(
//                            mainAxisSize: MainAxisSize.min,
//                            children: [
//                              SizedBox(width: 4),
//                              if (widget.themeState != null)
//                                Image.network(
//                                  'https://firebasestorage.googleapis.com/v0/b/flutter-yeti.appspot'
//                                      '.com/o/twtr%2F${widget.themeState.isDart ? 'verified_white' : 'verified_blue'}'
//                                      '.png?alt=media',
//                                  width: 15,
//                                )
//                            ],
//                          ),
//                        ),
//                        SizedBox(width: 5),
//                        Opacity(
//                            opacity: 0.6,
//                            child: Text('@${twt.user.username}', style: TextStyle(fontSize: smallDevice ? 12 : 14))),
//                        SizedBox(width: 5),
//                        Padding(
//                          padding: const EdgeInsets.only(bottom: 8),
//                          child: Opacity(opacity: 0.6, child: Text('.')),
//                        ),
//                        SizedBox(width: 5),
//                        Opacity(
//                            opacity: 0.6,
//                            child: Text(HomeScreenState.timeAgo(twt.timestamp),
//                                style: TextStyle(fontSize: smallDevice ? 12 : 14))),
//                      ],
//                    ),
//                    SizedBox(height: 4),
//                    Text(twt.twt, style: TextStyle(fontSize: smallDevice ? 12 : 14)),
//                    if (twt.image != null)
//                      Column(
//                        mainAxisSize: MainAxisSize.min,
//                        children: [
//                          SizedBox(height: 8),
//                          ClipRRect(
//                            borderRadius: BorderRadius.circular(10),
//                            child: Image.network(twt.image, fit: BoxFit.fitWidth),
//                          ),
//                        ],
//                      ),
//                    SizedBox(height: 12),
//                    Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                      children: [
//                        Row(
//                          mainAxisSize: MainAxisSize.min,
//                          children: [
//                            Image.network(
//                              'https://firebasestorage.googleapis.com/v0/b/flutter-yeti.appspot'
//                                  '.com/o/twtr%2Fcomment.png?alt=media',
//                              width: 15,
//                            ),
//                            SizedBox(width: 8),
//                            Text('${twt.comments}', style: TextStyle(fontSize: smallDevice ? 12 : 14))
//                          ],
//                        ),
//                        InkResponse(
//                          onTap: twt.retwted
//                              ? () {
//                            setState(() {
//                              twt.retwts = twt.retwts - 1;
//                              twt.retwted = false;
//                            });
//                          }
//                              : () {
//                            setState(() {
//                              twt.retwts = twt.retwts + 1;
//                              twt.retwted = true;
//                            });
//                          },
//                          child: Row(
//                            mainAxisSize: MainAxisSize.min,
//                            children: [
//                              Image.network(
//                                'https://firebasestorage.googleapis.com/v0/b/flutter-yeti.appspot'
//                                    '.com/o/twtr%2F${twt.retwted ? 'retwt_selected' : 'retwt'}.png?alt=media',
//                                width: 15,
//                              ),
//                              SizedBox(width: 8),
//                              Text('${twt.retwts}', style: TextStyle(fontSize: smallDevice ? 12 : 14))
//                            ],
//                          ),
//                        ),
//                        InkResponse(
//                          onTap: twt.liked
//                              ? () {
//                            setState(() {
//                              twt.likes = twt.likes - 1;
//                              twt.liked = false;
//                            });
//                          }
//                              : () {
//                            setState(() {
//                              twt.likes = twt.likes + 1;
//                              twt.liked = true;
//                            });
//                          },
//                          child: Row(
//                            mainAxisSize: MainAxisSize.min,
//                            children: [
//                              Image.network(
//                                'https://firebasestorage.googleapis.com/v0/b/flutter-yeti.appspot'
//                                    '.com/o/twtr%2F${twt.liked ? 'liked' : 'like'}.png?alt=media',
//                                width: 15,
//                              ),
//                              SizedBox(width: 8),
//                              Text('${twt.likes}', style: TextStyle(fontSize: smallDevice ? 12 : 14))
//                            ],
//                          ),
//                        ),
//                        Image.network(
//                          'https://firebasestorage.googleapis.com/v0/b/flutter-yeti.appspot'
//                              '.com/o/twtr%2Fshare.png?alt=media',
//                          width: 15,
//                        ),
//                        SizedBox()
//                      ],
//                    )
//                  ],
//                ),
//              )
//            ],
//          ),
//        ),
//        Container(height: 1, color: Theme.of(context).selectedRowColor),
//      ],
//    ),
//  );
//}
