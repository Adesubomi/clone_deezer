import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => MyHomePage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Player(),
      ),
    );
  }
}

class Player extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        /** CONTENT AREA */
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[

            RecommendedPlaylist(),
          ],
        ),

        /** CONTROLLER AND TAB NAVIGATOR */
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              /** CONTROLLER */
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(250, 54, 54, 54),
                ),
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        iconSize: 32.0,
                        icon: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        ),
                        onPressed: () => {},
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Ghost",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16.0),
                            ),
                            Text(
                              "Au/Ra - DEATH STRANDING: Timefall",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12.0),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        iconSize: 28.0,
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                        onPressed: () => {},
                      ),
                      IconButton(
                        iconSize: 36.0,
                        icon: Icon(
                          Icons.skip_next,
                          color: Colors.white,
                        ),
                        onPressed: () => {},
                      ),
                    ],
                  ),
                ),
              ),

              /** TAB NAVIGATOR */
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  TabButton(
                    titleString: "Home",
                    iconData: Icons.home,
                  ),
                  TabButton(
                    titleString: "Flow",
                    iconData: Icons.album,
                  ),
                  TabButton(
                    titleString: "My Music",
                    iconData: Icons.favorite_border,
                  ),
                  TabButton(
                    titleString: "Search",
                    iconData: Icons.search,
                  ),
                ],
              ),
            ],

            /** TAB NAVIGATOR */
          ),
        )
      ],
    );
  }
}

class TabButton extends StatelessWidget {
  final String titleString;
  final IconData iconData;

  TabButton({this.titleString, this.iconData});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Icon(iconData),
            Text(titleString),
          ],
        ),
        onPressed: () => {},
      ),
    );
  }
}

class RecommendedPlaylist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(top: 32.0, bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Text(
              "Recommended playlists",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: (() {
                List<Widget> poles = [];

                List<Map<String, dynamic>> recommended = [
                  {
                    "image": "assets/img/art-01.jpg",
                    "title": "Pop Rewind",
                    "position": 54.0,
                    "align": TextAlign.right
                  },
                  {
                    "image": "assets/img/art-02.jpg",
                    "title": "Piano Ballads",
                    "position": 8.0,
                    "align": TextAlign.center
                  },
                  {
                    "image": "assets/img/art-03.jpg",
                    "title": "EDM Pop",
                    "position": 8.0,
                    "align": TextAlign.center
                  },
                  {
                    "image": "assets/img/art-04.jpg",
                    "title": "Urban Party Hits",
                    "position": 8.0,
                    "align": TextAlign.center
                  },
                  {
                    "image": "assets/img/art-05.jpg",
                    "title": "Dance Pop",
                    "position": 8.0,
                    "align": TextAlign.center
                  },
                  {
                    "image": "assets/img/art-06.jpg",
                    "title": "Loves Me Pop",
                    "position": 8.0,
                    "align": TextAlign.center
                  },
                  {
                    "image": "assets/img/art-07.jpg",
                    "title": "New Hits SA",
                    "position": 8.0,
                    "align": TextAlign.center
                  },
                  {
                    "image": "assets/img/art-08.jpg",
                    "title": "Pop Joy",
                    "position": 8.0,
                    "align": TextAlign.center
                  },
                  {
                    "image": "assets/img/art-09.jpg",
                    "title": "Pop All Stars",
                    "position": 8.0,
                    "align": TextAlign.center
                  },
                  {
                    "image": "assets/img/art-10.jpg",
                    "title": "Acoustic Pop",
                    "position": 8.0,
                    "align": TextAlign.center
                  },
                ];

                recommended.forEach((item) => poles.add(
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 16.0,
                          right: 16.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Container(
                                width: 148,
                                height: 148,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Image.asset(
                                      item["image"],
                                      fit: BoxFit.cover,
                                    ),

                                    /** TITLE DISPLAY */
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          item["title"].toLowerCase(),
                                          textAlign: item["align"],
                                          softWrap: true,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ],
                                    ),

                                    /** PLAY BUTTON */
                                    Positioned(
                                      left: 12.0,
                                      bottom: 12.0,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                        child: Container(
                                          width: 28.0,
                                          height: 28.0,
                                          child: FlatButton(
                                            color: Colors.white,
                                            child: Icon(Icons.play_arrow),
                                            padding: EdgeInsets.all(0),
                                            onPressed: () => {},
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              item["title"],
                              style: TextStyle(fontSize: 15.0),
                            ),
                            SizedBox(
                              height: 2.0,
                            ),
                            Text(
                              "60 Tracks",
                              style:
                                  TextStyle(fontSize: 13.0, color: Colors.grey),
                            ),
                            SizedBox(
                              height: 16.0,
                            ),
                          ],
                        ),
                      ),
                    ));

                return poles;
              })(),
            ),
          ),
        ],
      ),
    );
  }
}