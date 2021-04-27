import 'package:aisc/constants.dart';
import 'package:aisc/pages/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class class1 extends StatefulWidget {
  @override
  _class1State createState() => _class1State();
}

class _class1State extends State<class1> {
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
      backgroundColor: gradientEndColor,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [gradientStartColor, gradientEndColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.3,0.7]
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Students at HIGH RISK! ',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 40,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              Container(
                height: 500,
                padding: const EdgeInsets.only(left: 32),
                child: Swiper(
                  itemCount: students.length,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                  layout: SwiperLayout.STACK,
                  pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                      activeSize: 20,
                      space: 8,
                    ),
                  ),
                  itemBuilder: (context, index) {
                    return Stack(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            SizedBox(height: 100),
                            Card(
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32)
                              ),
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(32.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(height: 100),
                                    Text(
                                      students[index].name,
                                      style: TextStyle(
                                        fontFamily: 'Avenir',
                                        fontSize: 44,
                                        color: const Color(0xff47455f),
                                        fontWeight: FontWeight.w900,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      students[index].class_,
                                      style: TextStyle(
                                        fontFamily: 'Avenir',
                                        fontSize: 44,
                                        color: primaryTextColor,
                                        fontWeight: FontWeight.w900,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          'ID: '+ students[index].admin_no.toString(),
                                          style: TextStyle(
                                            fontFamily: 'Avenir',
                                            fontSize: 18,
                                            color: secondaryTextColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        Icon(Icons.double_arrow_sharp, color: secondaryTextColor,
                                        ),
                                      ],
                                    ),
                                    /*ButtonBar(
                                      children: <Widget>[
                                        RaisedButton(onPressed: () {
                                          Navigator.pushNamed(context, '/violator_list');
                                        },
                                          color: Colors.red,
                                          child: Text('See Photo'),),
                                      ],
                                    ),*/
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Image.asset(students[index].photo),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

