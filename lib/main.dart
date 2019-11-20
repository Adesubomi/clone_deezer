import 'dart:math';
import 'package:deezer_clone/component/AlbumArt.dart';
import 'package:deezer_clone/component/AlbumArtViewAll.dart';
import 'package:deezer_clone/component/AlbumCategory.dart';
import 'package:deezer_clone/resources/DataMock.dart';
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
            MusicByGenre(),
            RecommendedReleases(),
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
                    isActive: true,
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
  final bool isActive;

  TabButton({this.titleString, this.iconData, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Icon(
              iconData,
              color: isActive ? Colors.black : Colors.black26,
            ),
            Text(
              titleString,
              style: TextStyle(
                color: isActive ? Colors.black : Colors.black38,
              ),
            ),
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

    List<Widget> albumArts = [];

    DataMock.recommendedPlaylists.forEach((item) {
      albumArts.add(
        AlbumArt(
          item["image"],
          item["title"],
          "${item['tracks']} Tracks",
        ),
      );
    });

    return AlbumCategory("Recommended playlists", albumArts);
  }
}

class MusicByGenre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Music by genre",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w700),
                    ),
                    Icon(Icons.chevron_right),
                  ],
                )),
            onTap: () => {},
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
                List<Widget> genreWidgets = [];

                DataMock.genres.forEach((item) => genreWidgets.add(
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0, right: 16.0),
                        child: Container(
                          width: 148,
                          height: 68,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(
                                Random().nextInt(155),
                                Random().nextInt(155),
                                Random().nextInt(155),
                                1),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Center(
                            child: Text(
                              item,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ));

                genreWidgets.add(
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0, right: 16.0),
                    child: Container(
                      width: 148,
                      height: 68,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          right: 16.0,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Text(
                              "View all",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.chevron_right),
                          ],
                        ),
                      ),
                    ),
                  ),
                );

                return genreWidgets;
              })(),
            ),
          ),
        ],
      ),
    );
  }
}

class RecommendedReleases extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    List<Widget> albumArts = [];

    DataMock.recommendedReleases.forEach((item) {
      albumArts.add(
        AlbumArt(
          item["image"],
          item["title"],
          item['artist'],
          showTitle: false,
        ),
      );
    });
    
    albumArts.add(AlbumArtViewAll());

    return AlbumCategory("Recommended releases", albumArts,
      viewAllRouteName: "recommended/releases",
    );
  }
}
