import 'package:flutter/material.dart';

void main() {
  runApp(AppRoot());
}

class AppRoot extends StatelessWidget {

  static final showGrid = false; // Set to false to show ListView
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              "Flutter Learning"
          ),
        ),
        body:  Center(child: showGrid ? _buildGrid() : _buildList()),
      ),
    );
  }
}


class ScrollViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: MyApp(),
    );
  }
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(40, 20, 30, 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        textDirection: TextDirection.rtl,
        children: [
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 10, color: Colors.blue[800]),
                  borderRadius: const BorderRadius.all(
                      const Radius.circular(8)),
                ),
                child: Image(
                    image: NetworkImage(
                        'https://c4.wallpaperflare.com/wallpaper/186/195/695/underwater-world-herd-blue-yellow-medium-size-fish-wallpaper-preview.jpg')
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}

class GridList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildGrid();
  }
}

Widget _buildGrid() => GridView.extent(
    maxCrossAxisExtent: 150,
    padding: const EdgeInsets.all(4),
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    children: _buildGridTileList(30));

// The images are saved with names pic0.jpg, pic1.jpg...pic29.jpg.
// The List.generate() constructor allows an easy way to create
// a list when objects have a predictable naming pattern.
List<Container> _buildGridTileList(int count) => List.generate(
    count, (i) => Container(child: Image.asset('assets/1.jpg')));
// #enddocregion grid

// #docregion list
Widget _buildList() => ListView(
  children: [
    _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
    _tile('The Castro Theater', '429 Castro St', Icons.theaters),
    _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
    _tile('Roxie Theater', '3117 16th St', Icons.theaters),
    _tile('United Artists Stonestown Twin', '501 Buckingham Way',
        Icons.theaters),
    _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
    Divider(),
    _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
    _tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant),
    _tile(
        'Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
    _tile('La Ciccia', '291 30th St', Icons.restaurant),
  ],
);

ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
  title: Text(title,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20,
      )),
  subtitle: Text(subtitle),
  leading: Icon(
    icon,
    color: Colors.blue[500],
  ),
);
// #enddocregion list

class TextWid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "subtitle",
      textDirection: TextDirection.rtl,
      style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.orange
      ),
    );
  }
}

class application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: Text(
            'Faisal Javed',
            style: TextStyle(
                color: Colors.blue,
                fontFamily: 'Raleway',
                fontSize: 50,
                fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
    );
  }
}