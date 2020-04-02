import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool _active1 = true;
  bool _active2 = false;
  bool _active3 = false;

  void _handleTap1() {
    setState(() {
      _active1 = !_active1;
      _active2 = false;
      _active3 = false;
    });
  }

  void _handleTap2() {
    setState(() {
      _active2 = !_active2;
      _active1 = false;
      _active3 = false;
    });
  }

  void _handleTap3() {
    setState(() {
      _active3 = !_active3;
      _active2 = false;
      _active1 = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Color(0xff262863)),
          tooltip: 'menu',
          onPressed: null,
        ),
        title: Text(
          'Reto',
          style: TextStyle(
            color: Color(0xff262863),
            fontSize: 25,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications, color: Color(0xff262863)),
            tooltip: 'notifications',
            onPressed: null,
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://www.woolha.com/media/2019/06/buneary.jpg"),
            radius: 25,
          ),
          SizedBox(width: 20)
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[200],
          child: Column(
            children: <Widget>[
              //listimages
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                height: 200.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SizedBox(width: 30),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 2.0),
                      width: 360.0,
                      color: Colors.red,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 2.0),
                      width: 360.0,
                      color: Colors.blue,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 2.0),
                      width: 360.0,
                      color: Colors.green,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 2.0),
                      width: 360.0,
                      color: Colors.yellow,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 2.0),
                      width: 360.0,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
              //tabbar
              Container(
                height: 50,
                width: 500,
                color: Colors.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(width: 70),
                      Expanded(
                        child: GestureDetector(
                          onTap: _handleTap1,
                          child: Text('TOP',
                              style: _active1
                                  ? TextStyle(
                                      color: Color(0xff262863),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)
                                  : TextStyle(
                                      color: Color(0xff262863), fontSize: 15)),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: _handleTap2,
                          child: Text('DETAILS',
                              style: _active2
                                  ? TextStyle(
                                      color: Color(0xff262863),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)
                                  : TextStyle(
                                      color: Color(0xff262863), fontSize: 15)),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: _handleTap3,
                          child: Text(
                            'LEADERBOARD',
                            style: _active3
                                ? TextStyle(
                                    color: Color(0xff262863),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15)
                                : TextStyle(
                                    color: Color(0xff262863), fontSize: 15),
                          ),
                        ),
                      ),
                      SizedBox(width: 70),
                    ]),
              ),
              //participationbutton
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 70,
                width: 400,
                decoration: BoxDecoration(
                    color: Color(0xff262863),
                    borderRadius: new BorderRadius.all(Radius.circular(50))),
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 70),
                    Container(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              "Participate Now",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Text(
                              "Stand a chance to win mighty prizes",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )
                          ]),
                    ),
                    SizedBox(width: 30),
                    Container(
                      child: GestureDetector(
                        child: IconButton(
                          icon: const Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.white,
                          ),
                          tooltip: 'more',
                          // color: Colors.white,
                          onPressed: null,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              //....My Participations
              Container(
                height: 50,
                width: 420,
                color: Colors.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: 20),
                      Container(
                          child: Text('My Particpations',
                              style: TextStyle(
                                color: Color(0xff262863),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )))
                    ]),
              ),
              //content
              Container(
                // margin: EdgeInsets.symmetric(vertical: 10.0),
                height: 150.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SizedBox(width: 15),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 2.0),
                      width: 160.0,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
              //...top performer
              Container(
                height: 50,
                width: 420,
                color: Colors.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: 20),
                      Container(
                          child: Text('Top Performers',
                              style: TextStyle(
                                color: Color(0xff262863),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )))
                    ]),
              ),
              //top perform content
              Container(
                // margin: EdgeInsets.symmetric(vertical: 10.0),
                height: 150.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SizedBox(width: 15),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 2.0),
                      width: 160.0,
                      color: Colors.red,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 2.0),
                      width: 160.0,
                      color: Colors.blue,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 2.0),
                      width: 160.0,
                      color: Colors.green,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 2.0),
                      width: 160.0,
                      color: Colors.yellow,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 2.0),
                      width: 160.0,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
              //...all
              Container(
                height: 50,
                width: 420,
                color: Colors.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: 20),
                      Container(
                          child: Text('All',
                              style: TextStyle(
                                color: Color(0xff262863),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )))
                    ]),
              ),
              //allcontent
              Container(
                height: 150.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SizedBox(width: 15),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 2.0),
                      width: 160.0,
                      color: Colors.red,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 2.0),
                      width: 160.0,
                      color: Colors.blue,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 2.0),
                      width: 160.0,
                      color: Colors.green,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 2.0),
                      width: 160.0,
                      color: Colors.yellow,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 2.0),
                      width: 160.0,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.all_inclusive,
              size: 30.0,
            ),
            title: Text(
              '',
              style: TextStyle(height: 0.5, fontSize: 2),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.stars,
              size: 30.0,
            ),
            title: Text(
              '',
              style: TextStyle(height: 0.5, fontSize: 2),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard,
              size: 30.0,
            ),
            title: Text(
              ' ',
              style: TextStyle(height: 0.5, fontSize: 2),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff262863),
        onTap: _onItemTapped,
        elevation: 25,
      ),
    );
  }
}