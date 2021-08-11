import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando_modular/app/app_module.dart';
import 'package:flutterando_modular/app/modules/auth/auth_store.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

class AuthPage extends StatefulWidget {
  final String title;
  const AuthPage({Key? key, this.title = 'AuthPage'}) : super(key: key);
  @override
  AuthPageState createState() => AuthPageState();
}

class AuthPageState extends ModularState<AuthPage, AuthStore> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Observer(builder: (context) {
            return Text(store.name);
          })
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            child: Icon(Icons.forward),
            onPressed: () {
              Modular.to.navigate('/home');
            },
          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              store.addName();
            },
          ),
        ],
      ),
    );
  }
}
