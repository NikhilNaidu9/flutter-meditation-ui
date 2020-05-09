import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          elevation: 0.0,
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width - 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('assets/bg_image.png'),
                          fit: BoxFit.cover)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Sleep Better',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              fontFamily: 'Montserrat'),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          '35 min',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            color: Colors.black,
                          ),
                          iconSize: 45.0,
                          onPressed: () {},
                          padding: EdgeInsets.all(0.0),
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 55.0, left: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Sessions',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 27.0,
                        fontFamily: 'Montserrat'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            _buildSessionsCard('Sleep Better', true, 2, 5),
            _buildSessionsCard('Bad Dreams', false, 0, 10),
            _buildSessionsCard('Panic Attacks', false, 0, 5),
            _buildSessionsCard('Phone Addiction', false, 0, 15),
            _buildSessionsCard('Overthinking', false, 0, 5),
          ],
        ));
  }

  _buildSessionsCard(String name, bool playing, int endTime, int startTime) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        height: 90,
        width: MediaQuery.of(context).size.width - 15,
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Row(
          children: <Widget>[
            IconButton(
              icon: playing == true
                  ? Icon(Icons.pause_circle_filled)
                  : Icon(Icons.play_circle_filled),
              color: Colors.black,
              onPressed: () {},
              iconSize: 50.0,
            ),
            SizedBox(
              width: 5.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    startTime.toString() +
                        ' min / ' +
                        endTime.toString() +
                        ' min',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 110.0,
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              iconSize: 30.0,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
