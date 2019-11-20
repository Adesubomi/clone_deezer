import 'package:flutter/material.dart';

class AlbumArtViewAll extends StatelessWidget {
  final Function onPress;

  AlbumArtViewAll({this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16.0,
        right: 16.0,
      ),
      child: Container(
        width: 148,
        height: 148,
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(120, 120, 120, 0.1),
              blurRadius: 8.0,
              spreadRadius: 0,
              offset: Offset( 2.0, 2.0, ),
            )
          ],
        ),
        child: FlatButton(
          padding: EdgeInsets.all(0.0),
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          onPressed: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: <Widget>[
                    Text("View all"),
                    Spacer(),
                    Icon(Icons.chevron_right),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
