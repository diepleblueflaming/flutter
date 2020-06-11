import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  final List<MainAxisAlignment> listMainAxis = [
    MainAxisAlignment.start,
    MainAxisAlignment.end,
    MainAxisAlignment.center,
    MainAxisAlignment.spaceEvenly,
    MainAxisAlignment.spaceAround,
    MainAxisAlignment.spaceBetween,
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: listMainAxis
            .map<Widget>(
              (MainAxisAlignment axis) => Container(
                color: Colors.green,
                height: 300.0,
                margin: EdgeInsets.only(bottom: 10.0),
                child: Column(
                  mainAxisAlignment: axis,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(axis.toString()),
                    Container(
                      padding: EdgeInsets.all(5.0),
                      color: Colors.deepPurple,
                      child: Text('This is a container'),
                    ),
                    Container(
                      width: 100,
                      height: 100.0,
                      color: Colors.amberAccent,
                    ),
                    Container(
                      width: 100,
                      height: 100.0,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
