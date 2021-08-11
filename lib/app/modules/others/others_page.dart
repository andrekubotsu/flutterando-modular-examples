import 'package:flutter_modular/flutter_modular.dart';

import 'package:flutter/material.dart';

import 'others_store.dart';

class OthersPage extends StatefulWidget {
  final String title;
  const OthersPage({Key? key, this.title = "Others Page"}) : super(key: key);
  @override
  OthersPageState createState() => OthersPageState();
}

class OthersPageState extends ModularState<OthersPage, OthersStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          ElevatedButton(
              onPressed: () {
                Modular.to.navigate('/');
              },
              child: Text('Auth Page'))
        ],
      ),
    );
  }
}
