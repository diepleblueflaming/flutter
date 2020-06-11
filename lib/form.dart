import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  @override
  FormWidgetState createState() => FormWidgetState();
}

class FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text('Form Example'),
        ),
        body: Container(
          padding: EdgeInsets.all(8),
          child: makeFormView(),
        ));
  }

  Widget makeFormView() {
    return Form(
        key: _formKey,
        child: Column(children: <Widget>[
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter some text here'
            ),
            onChanged: (text) {
              print(text);
            },
          ),
          Divider(),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Enter some text to submit form'
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            onChanged: (text) {
              print(text);
            },
          ),
          Divider(),
          RaisedButton(
            onPressed: () {
              // Validate returns true if the form is valid, otherwise false.
              if (_formKey.currentState.validate()) {
                // If the form is valid, display a snackbar. In the real world,
                // you'd often call a server or save the information in a database.
                Scaffold.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
              }
            },
            child: Text('Submit'),
          )
        ])
    );
  }
}
