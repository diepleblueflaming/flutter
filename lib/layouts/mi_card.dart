import 'package:flutter/material.dart';

class MiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.teal.shade700,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            child: ClipOval(
              child: Image.asset(
                'images/gal_gadot.jpg',
                width: 100.0,
                height: 100.0,
                fit: BoxFit.cover,
                alignment: Alignment(0, -0.75),
              ),
            ),
          ),
          Text(
            'Gal Gadot',
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico',
            ),
          ),
          Text(
            'Popular Actor',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.teal.shade100,
                fontFamily: 'Source Sans Pro'),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            width: 200.0,
            child: Divider(
              color: Colors.teal.shade100,
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(20.0, 0, 20.0, 20.0),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.teal,
              ),
              title: Text(
                '+84 546 879 899',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
            child: ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.teal,
              ),
              title: Text(
                'galgadot@email.com',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
