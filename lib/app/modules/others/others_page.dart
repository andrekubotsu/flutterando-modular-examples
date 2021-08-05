import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando_modular/app/modules/others/others_store.dart';
import 'package:flutter/material.dart';

class OthersPage extends StatefulWidget {
  final String title;
  const OthersPage({Key? key, this.title = 'OthersPage'}) : super(key: key);
  @override
  OthersPageState createState() => OthersPageState();
}
class OthersPageState extends State<OthersPage> {
  final OthersStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}