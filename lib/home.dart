import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 1.9,
      primary: false,
      padding: const EdgeInsets.all(0),
      crossAxisSpacing: 1,
      mainAxisSpacing: 1,
      crossAxisCount: 1,
      children: <Widget>[
        Container(
          child: Center(
            child: Text(
              'HEAD ACHE . FEVER . DRY COUGH . BREATHING DIFFICULTY',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
              overflow: TextOverflow.visible,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Container(
            child: Image.asset(
          'assets/infected.png',
        )),
        Container(
          child: Column(
            children: [
              Container(
                  width: 350.0,
                  child:
                      SizedBox(width: double.infinity, child: GetHelpButton())),
              Container(
                  width: 350.0,
                  child: SizedBox(
                      width: double.infinity, child: SettingsButton())),
            ],
          ),
        )
      ],
    );
  }
}

/// Get Help button

class GetHelpButton extends StatelessWidget {
  const GetHelpButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.teal,
      textColor: Colors.white,
      disabledColor: Colors.grey,
      disabledTextColor: Colors.black,
      padding: EdgeInsets.all(8.0),
      splashColor: Colors.blueAccent,
      onPressed: () => {Navigator.of(context).pushNamed('/helpline')},
      child: Text(
        'Get Help',
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}

/// Settings button

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.teal,
      textColor: Colors.white,
      disabledColor: Colors.grey,
      disabledTextColor: Colors.black,
      padding: EdgeInsets.all(8.0),
      splashColor: Colors.blueAccent,
      onPressed: () => {Navigator.of(context).pushNamed('/settings')},
      child: Text(
        'Settings',
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}
