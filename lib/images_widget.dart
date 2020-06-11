import 'package:flutter/material.dart';

class ImagesWidget extends StatefulWidget {
  @override
  _ImagesWidgetState createState() => _ImagesWidgetState();
}

class _ImagesWidgetState extends State<ImagesWidget> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: Text('Images Widgets Example'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 16),
            width: screenWidth,
            child: Column(
              children: <Widget>[
                Text('Image from assets'),
                Image.asset('images/ha_long_bay.jpg'),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16),
            width: screenWidth,
            child: Column(
              children: <Widget>[
                Text('Image from network'),
                Image.network(
                    'https://images.unsplash.com/photo-1591331501569-bf2216b6723f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
