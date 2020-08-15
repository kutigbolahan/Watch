import 'package:flutter/material.dart';
import 'package:watch/watch_view.dart';

class Watch extends StatefulWidget {
  @override
  _WatchState createState() => _WatchState();
}

class _WatchState extends State<Watch> {
  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    return Scaffold(
      backgroundColor: Color(0xFF2D2F41),
      body: Container(
        padding: EdgeInsets.all(32),
        color: Color(0xff2d2f41),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Clock',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            'Clock',
            style: TextStyle(color: Colors.white, fontSize: 64),
          ),
          Text(
            'Clock',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Watchview(),
          Text(
            'Timezone',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Icon(
                Icons.language,
                color: Colors.white,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                'UTC',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
