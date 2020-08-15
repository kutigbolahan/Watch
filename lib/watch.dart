import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:watch/watch_view.dart';

class Watch extends StatefulWidget {
  @override
  _WatchState createState() => _WatchState();
}

class _WatchState extends State<Watch> {
  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formattedTime = DateFormat('HH:mm').format(now);
    var formattedDate = DateFormat('EE, d MMM').format(now);
    var timeZoneString = now.timeZoneOffset.toString().split('.').first;
    var offsetSign = '';
    if (!timeZoneString.startsWith('-')) offsetSign = '+';
    print(timeZoneString);
    return Scaffold(
      backgroundColor: Color(0xFF2D2F41),
      body: Row(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
                onPressed: () {},
                child: Column(
                  children: [
                    FlutterLogo(),
                    Text(
                      'Clock',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    )
                  ],
                )),
          ],
        ),
        VerticalDivider(
          color: Colors.white54,
          width: 0.5,
        ),
        SizedBox(
          width: 7,
        ),
        Expanded(
          child: Container(
            // width: 900,
            // height: 900,
            padding: EdgeInsets.only(top: 32),
            color: Color(0xff2d2f41),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Clock',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                formattedTime,
                style: TextStyle(color: Colors.white, fontSize: 64),
              ),
              Text(
                formattedDate,
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
                    'UTC' + offsetSign + timeZoneString,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              )
            ]),
          ),
        ),
      ]),
    );
  }
}
