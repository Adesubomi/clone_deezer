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
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Recommended playlists",
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: (() {
                List<Widget> poles = [];

                for (int i =  0; i < 12; i++) {
                  poles.add(Padding(
                    padding: const EdgeInsets.only(
                      top: 16.0,
                      right: 16.0,
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 144,
                          height: 144,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(color: Colors.black54)),
                        )
                      ],
                    ),
                  ));
                }

                return poles;
              })(),
            ),
          ),
        ],
      ),
    );
  }
}
