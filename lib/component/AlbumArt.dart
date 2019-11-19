import 'package:flutter/material.dart';

class AlbumArt extends StatelessWidget {

  final String image;
  final bool showTitle;
  final TextAlign align;
  final Function onPlay;

  final String title;
  final String subTitle;

  AlbumArt(this.image, this.title, this.subTitle, {this.showTitle=true, this.onPlay, this.align});

  @override
  Widget build(BuildContext context) {

    return Padding(
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
                    this.image,
                    fit: BoxFit.cover,
                  ),

                  /** TITLE DISPLAY */
                  Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: <Widget>[
                      ((){
                        if (this.showTitle) {
                          return Text(
                            this.title.toLowerCase(),
                            textAlign: this.align,
                            softWrap: true,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                            ),
                          );
                        }

                        return SizedBox.shrink();
                      })(),

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
                          onPressed: () { this.onPlay(); },
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
            this.title,
            style: TextStyle(fontSize: 15.0),
          ),
          SizedBox(
            height: 2.0,
          ),
          Text(
            this.subTitle,
            style:
            TextStyle(fontSize: 13.0, color: Colors.grey),
          ),
          SizedBox(
            height: 16.0,
          ),
        ],
      ),
    );
  }
}