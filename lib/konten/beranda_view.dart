import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:traddee/konten/traddee_appbar_view.dart';

class BerandaPage extends StatefulWidget {
  @override
  _BerandaPageState createState() => new _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  static final List<String> imgSlider = [
    'bgheader1.jpg',
    'bgheader2.jpg',
    'bgheader3.jpg'
  ];
  final CarouselSlider autoPlayImage = CarouselSlider(
    items: imgSlider.map((fileImage) {
      return Container(
        margin: EdgeInsets.all(2.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Image.asset(
            'assets/images/${fileImage}',
            width: 10000,
            fit: BoxFit.cover,
          ),
        ),
      );
    }).toList(),
    height: 180,
    autoPlay: true,
    enlargeCenterPage: true,
    aspectRatio: 2.0,
  );
  @override
  Widget build(BuildContext context) {
    return new SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            // appBar: new TraddeeAppBar(),
            body: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    expandedHeight: 200.0,
                    floating: false,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Text("Tradee",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          )),
                      background: Image(
                        image: AssetImage('assets/images/bgheader1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ];
              },
              body: ListView(children: [
                // Container(
                //   child: autoPlayImage,
                //   margin: EdgeInsets.all(10),
                // ),
                Container(
                  margin: EdgeInsets.all(5),
                  height: 200,
                  // width: 200,
                  alignment: Alignment.topLeft,
                  color: Colors.grey[100],
                ),
                Container(
                  height: 150.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.all(10),
                          width: 100.0,
                          height: 0.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              )
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.all(10),
                          width: 100.0,
                          height: 0.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              )
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.all(10),
                          width: 100.0,
                          height: 0.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              )
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.all(10),
                          width: 100.0,
                          height: 0.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              )
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.all(10),
                          width: 100.0,
                          height: 0.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              )
                            ],
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  height: 200,
                  // width: 200,
                  alignment: Alignment.topLeft,
                  color: Colors.grey[100],
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  height: 200,
                  // width: 200,
                  alignment: Alignment.topLeft,
                  color: Colors.grey[100],
                ),
              ]),
            )));
  }
}
