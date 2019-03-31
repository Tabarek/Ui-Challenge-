import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
      drawer: new Drawer(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue[100],
        title: Text('Travel'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 40, right: 150, bottom: 10),
          child: Text(
            "Hello, Tabarek.",
            style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.w400),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 150, bottom: 10),
          child: Text(
            "where you want to travel ?",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          ),
        ),
        Expanded(
          child: Container(
            child: ListView.builder(
                //shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Column(children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 100, left: 20, right: 20),

                      height: 500,
                      width: 300,

                      decoration: BoxDecoration(
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.black38,
                            offset: Offset(0.0, 10.0),
                            blurRadius: 15.0,
                          ),
                        ],
                      ),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        color: Color(0XFFFF1EEE7),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: new EdgeInsets.only(
                                  top: 10, left: 50, right: 10, bottom: 30),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'Galaxy',
                                        style: new TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          Icons.favorite_border,
                                          color: Colors.redAccent,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'Moon Sun and Earth',
                                        style: new TextStyle(
                                            color: Colors.grey, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Image.asset(
                                'lib/assets/monn.jpg',
                                alignment: Alignment.center,
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                RaisedButton(
                                  color: Colors.yellow[700],
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 25),
                                  child: Text(
                                    'Travel',
                                    style: new TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  onPressed: () {},
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                RaisedButton(
                                  color: Colors.red[700],
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 25),
                                  child: Text(
                                    'Dont have money',
                                    style: new TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  onPressed: () {},
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),

//
                    ),
                  ]);
                }),
          ),
        ),
      ]),
      backgroundColor: Colors.blue[100],
    );
  }
}
