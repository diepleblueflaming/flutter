import 'package:flutter/material.dart';
import 'form.dart';
import 'random_words.dart';
import 'images_widget.dart';
import 'layout_example.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<_Route> _routes = List.from([
    new _Route('/form', 'form', FormWidget()),
    new _Route('/list', 'list', RandomWords()),
    new _Route('/images', 'images', ImagesWidget()),
    new _Route('/layouts', 'layout', LayoutExample())
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home Page')),
        body: Center(child: makeListRoutes(context)));
  }

  ListView makeListRoutes(BuildContext context) => ListView(
        children: _routes
            .map<Widget>(
              (_Route route) => Column(
                children: <Widget>[
                  ListTile(
                    title: Text(route._name.toUpperCase()),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => route._component),
                      );
                    },
                  ),
                  Divider(),
                ],
              ),
            )
            .toList(),
      );
}

class _Route {
  String _path = '';
  String _name = '';
  Widget _component;
  _Route(String path, String name, Widget component) {
    _name = name;
    _path = path;
    _component = component;
  }
}
