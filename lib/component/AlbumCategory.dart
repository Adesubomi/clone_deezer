import 'package:flutter/material.dart';

class AlbumCategory extends StatelessWidget {

  final String title;
  final List<Widget> albumArts;
  final String viewAllRouteName;

  AlbumCategory(this.title, this.albumArts, {this.viewAllRouteName=""});

  @override
  Widget build(BuildContext context) {

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
            child: GestureDetector(
              child: Row(
                children: <Widget>[
                  Text(
                    this.title,
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
                  ),

                  (() {
                    if (this.viewAllRouteName.isNotEmpty) {
                      return Icon(Icons.chevron_right);
                    }
                    return SizedBox.shrink();
                  })(),
                ],
              ),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: this.albumArts,
            ),
          ),
        ],
      ),
    );
  }
}