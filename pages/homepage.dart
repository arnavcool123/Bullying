import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'login');
        },
        child: Text('LOG OUT',
        textAlign: TextAlign.center,
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.purple,
                  Colors.blue
                ],
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                height: 114,
                child: Row(
                  children: <Widget>[
                    Column(

                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('     ABC SCHOOL ,DELHI',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 35)
                        ),
                        SizedBox(height: 5),
                        Text('  Principal ',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)
                        ),
                            Text('          Anti-Bullying Surveillance',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)
                            ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(child: GridView.count(
                  mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              primary: false,
              crossAxisCount: 2,
              children: <Widget>[
                Card(
                  color: Colors.greenAccent[100],

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Text('10th Hallway', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                      ButtonBar(
                        children: <Widget>[
                          RaisedButton(onPressed: () {
                            Navigator.pushNamed(context, '/no_list');
                          },
                            color: Colors.green[500],
                            child: Text('Safe! No Alert'),),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.red[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Text('Senior washroom ', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                      ButtonBar(
                        children: <Widget>[
                          RaisedButton(onPressed: () {
                            Navigator.pushNamed(context, 'video_demo');
                          },
                            color: Colors.red[800],
                            child: Text('Caution! Alert! Danger!'),),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.greenAccent[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Text('11th Corridor', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                      ButtonBar(
                        children: <Widget>[
                          RaisedButton(onPressed: () {
                            Navigator.pushNamed(context, '/no_list');
                          },
                            color: Colors.green[500],
                            child: Text('Safe! No Alert'),),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.greenAccent[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Text('9th Corridor ', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                      ButtonBar(
                        children: <Widget>[
                          RaisedButton(onPressed: () {
                            Navigator.pushNamed(context, '/no_list');
                          },
                            color: Colors.green[500],
                            child: Text('Safe! No Alert'),),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.greenAccent[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Text('8th Corridor', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                      ButtonBar(
                        children: <Widget>[
                          RaisedButton(onPressed: () {
                            Navigator.pushNamed(context, '/no_list');
                          },
                            color: Colors.green[500],
                            child: Text('Safe! No Alert'),),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.greenAccent[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Text('7th Corridor', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                      ButtonBar(
                        children: <Widget>[
                          RaisedButton(onPressed: () {
                            Navigator.pushNamed(context, '/no_list');
                          },
                            color: Colors.green[500],
                            child: Text('Safe! No Alert'),),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.greenAccent[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Text('Library', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                      ButtonBar(
                        children: <Widget>[
                          RaisedButton(onPressed: () {
                            Navigator.pushNamed(context, '/no_list');
                          },
                            color: Colors.green[500],
                            child: Text('Safe! No Alert'),),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.greenAccent[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Text('Store Room', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                      ButtonBar(
                        children: <Widget>[
                          RaisedButton(onPressed: () {
                            Navigator.pushNamed(context, '/no_list');
                          },
                            color: Colors.green[500],
                            child: Text('Safe! No Alert'),),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.red[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Text('Main Entrance', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      ButtonBar(
                        children: <Widget>[
                          RaisedButton(onPressed: () {
                            Navigator.pushNamed(context, 'video_demo');
                          },
                            color: Colors.red[800],
                            child: Text('Caution! Alert! Danger!'),),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.greenAccent[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Text('Canteen ', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                      ButtonBar(
                        children: <Widget>[
                          RaisedButton(onPressed: () {
                            Navigator.pushNamed(context, '/no_list');
                          },
                            color: Colors.green[500],
                            child: Text('SAfe! No Alert'),),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.greenAccent[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Text('Parking Lot', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                      ButtonBar(
                        children: <Widget>[
                          RaisedButton(onPressed: () {
                            Navigator.pushNamed(context, '/no_list');
                          },
                            color: Colors.green[500],
                            child: Text('Safe! No Alert'),),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.greenAccent[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Text('Reception', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                      ButtonBar(
                        children: <Widget>[
                          RaisedButton(onPressed: () {
                            Navigator.pushNamed(context, '/no_list');
                          },
                            color: Colors.green[500],
                            child: Text('Safe! No Alert'),),
                        ],
                      ),
                    ],
                  ),
                ),
                                    ],
                  ),
                ),
              ],
              ),
            ],
          ),
          );
  }
}
