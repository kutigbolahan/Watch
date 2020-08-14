import 'package:flutter/material.dart';
import 'package:watch/watch_view.dart';

class Watch extends StatefulWidget {
  @override
  _WatchState createState() => _WatchState();
}

class _WatchState extends State<Watch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Color(0xff2d2f41),
        child: Watchview(),
      ),
    );
  }
}
