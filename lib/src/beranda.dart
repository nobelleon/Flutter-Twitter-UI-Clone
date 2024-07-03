import 'package:flutter/material.dart';

import 'models/TweetModel.dart';

class Beranda extends StatelessWidget {
  final List<Tweet> allTweets = [
    TweetWithImage1(
        textInput: "I had a really wonderful day with my friends",
        retweets: "273",
        likes: "1005",
        imageUrl: "assets/image/rihanna1.jpg",
        avatar: "assets/image/rihanna.jpg",
        name: "Rihanna Boma",
        handle: "@Rihanna"),
    TweetWithTextOnly(
        textInput:
            "When feeling overwhelmed by a faraway goal, repeat the following: "
            "I have it within me right now, to get me to where I want to be later",
        retweets: "3.5k",
        likes: "4.9k",
        avatar: "assets/image/prosper.jpg",
        name: "Prosper",
        handle: "@unicodeveloper"),
    TweetWithImage3(
        textInput: "To me family is everything",
        retweets: "4.9k",
        likes: "7k",
        imageUrl1: "assets/image/davido3.jpg",
        imageUrl2: "assets/image/davido.jpg",
        imageUrl3: "assets/image/davido2.jpg",
        avatar: "assets/image/davido.jpg",
        name: "Davido OBO",
        handle: "@davido"),
    TweetWithImage2(
        textInput: "You are beautiful, dont let anybody tell you you're not.",
        retweets: "200",
        likes: "212",
        imageUrl1: "assets/image/wizkid1.jpg",
        imageUrl2: "assets/image/wizkid.jpg",
        avatar: "assets/image/wizkid.jpg",
        name: "Wizkid",
        handle: "@WizkidAyo"),
    TweetWithImage4(
        textInput: "My favorite artists in one tweet",
        retweets: "17.5k",
        likes: "63.8k",
        imageUrl1: "assets/image/bigsean1.jpg",
        imageUrl2: "assets/image/bigsean3.jpg",
        imageUrl3: "assets/image/wizkid.jpg",
        imageUrl4: "assets/image/bigsean2.jpg",
        avatar: "assets/image/ray.jpg",
        name: "Ray Okaah",
        handle: "@RaysCode")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // returns a material scaffold which forms the backbone / skeleton of our screen.
      body:

          /// The body of our Home Screen would be a ListView builder
          /// This is responsible for generating our list of tweets.
          ListView.builder(
        itemBuilder:
            buildTweet, // The actual widget responsible for what gets displayed
        itemCount:
            allTweets.length, // The number of items the list should display
      ),
    );
  }

  Widget buildTweet(BuildContext context, int index) {
    Tweet singleTweet = allTweets[index];

    if (singleTweet is TweetWithTextOnly) {
      return _buildTweetContent(context, singleTweet, _noImage());
    } else if (singleTweet is TweetWithImage1) {
      return _buildTweetContent(context, singleTweet, _oneImage(singleTweet));
    } else if (singleTweet is TweetWithImage2) {
      return _buildTweetContent(context, singleTweet, _twoImages(singleTweet));
    } else if (singleTweet is TweetWithImage3) {
      return _buildTweetContent(
          context, singleTweet, _threeImages(singleTweet));
    } else if (singleTweet is TweetWithImage4) {
      return _buildTweetContent(context, singleTweet, _fourImages(singleTweet));
    } else {
      return new Text("No Tweet found");
    }
  }

  Widget _buildTweetContent(
      BuildContext context, var meTweet, Widget picToBuild) {
    return new Column(children: <Widget>[
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            child: CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage(meTweet.avatar),
            ),
            margin: EdgeInsets.all(10.0),
          ),
          new Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Padding(padding: EdgeInsets.only(bottom: 2.0)),
                _buildTitle(meTweet.name, meTweet.handle),
                new Padding(padding: EdgeInsets.only(bottom: 2.0)),
                new Text(
                  meTweet.textInput,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                new Padding(padding: EdgeInsets.only(bottom: 5.0)),
                picToBuild,
                _buildBottomButtons(context, meTweet.retweets, meTweet.likes),
              ],
            ),
            flex: 1,
          )
        ],
      ),
      new Container(
        height: 0.25,
        width: double.infinity,
        color: Colors.black45,
      )
    ]);
  }

  Widget _buildTitle(String name, handle) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Row(
          children: <Widget>[
            new Text(
              name,
              style: new TextStyle(fontWeight: FontWeight.bold),
            ),
            new Text(handle),
          ],
        ),
        new Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            new Icon(
                Icons.keyboard_arrow_down), //alignment: Alignment.topRight,),
          ],
        ),
      ],
    );
  }

  Widget _buildBottomButtons(
      BuildContext context, String retweets, String likes) {
    return new Container(
        margin: EdgeInsets.only(top: 10.0, bottom: 5.0, right: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              Icons.reply,
              size: 15.0,
            ),
            // new Image.asset("images/reply.png", height: 15.0, width: 15.0,),

            new Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                //Icon(Icons.loop, size: 15.0,),
                new Image.asset(
                  "assets/image/retweet.png",
                  height: 20.0,
                  width: 20.0,
                ),
                // Above, decided to use a png image in place of the initial material icon.
                new Padding(padding: EdgeInsets.only(right: 5.0)),
                new Text(retweets)
              ],
            ),

            new Row(
              children: <Widget>[
                Icon(
                  Icons.favorite_border,
                  size: 15.0,
                ),
                new Padding(padding: EdgeInsets.only(right: 5.0)),
                new Text(likes)
              ],
            ),

            Icon(
              Icons.share,
              size: 15.0,
            )
          ],
        ));
  }

  Widget _noImage() {
    return new Padding(padding: EdgeInsets.only(top: 0.01));
  }

  /// _oneImage method returns a build method for pics with One Image.
  Widget _oneImage(var singleTweet) {
    return new Container(
      child: Image.asset(singleTweet.imageUrl),
      padding: EdgeInsets.only(right: 10.0),
    );
  }

  /// _twoImages method returns a build method for pics with Two Images.
  Widget _twoImages(var singleTweet) {
    return new Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
      new Expanded(
        child: Image.asset(
          singleTweet.imageUrl1,
          fit: BoxFit.contain,
        ),
        flex: 1,
      ),
      new Expanded(
        child: Image.asset(
          singleTweet.imageUrl2,
          fit: BoxFit.contain,
        ),
        flex: 1,
      ),
      new Padding(padding: EdgeInsets.only(right: 10.0))
    ]);
  }

  /// _threeImages method returns a build method for pics with three Images
  Widget _threeImages(var singleTweet) {
    return new Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        new Column(
          children: <Widget>[
            new Image.asset(
              singleTweet.imageUrl1,
              fit: BoxFit.cover,
              height: 200.0,
              width: 150.0,
            ),
          ],
        ),
        new Column(
          children: <Widget>[
            Image.asset(singleTweet.imageUrl2,
                fit: BoxFit.contain, height: 100.0),
            Image.asset(singleTweet.imageUrl3,
                fit: BoxFit.contain, height: 100.0),
            new Padding(padding: EdgeInsets.only(right: 10.0))
          ],
        ),
      ],
    );
  }

  /// _fourImages method returns a build method for pics with four Images
  Widget _fourImages(var singleTweet) {
    return new Column(
      children: <Widget>[
        Row(//mainAxisSize: MainAxisSize.min,
            children: <Widget>[
          new Expanded(
            child: Image.asset(
              singleTweet.imageUrl1,
              fit: BoxFit.cover,
              height: 200.0,
            ),
            flex: 1,
          ),
          new Expanded(
            child: Image.asset(
              singleTweet.imageUrl2,
              fit: BoxFit.cover,
              height: 200.0,
            ),
            flex: 1,
          ),
          new Padding(padding: EdgeInsets.only(right: 10.0))
        ]),
        new Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
          new Expanded(
            child: Image.asset(
              singleTweet.imageUrl3,
              fit: BoxFit.cover,
              height: 200.0,
            ),
            flex: 1,
          ),
          new Expanded(
            child: Image.asset(singleTweet.imageUrl4,
                fit: BoxFit.cover, height: 200.0),
            flex: 1,
          ),
          new Padding(padding: EdgeInsets.only(right: 10.0))
        ]),
      ],
    );
  }
}
