import 'package:flutter/material.dart';
import '../package/text_field_template.dart';
import '../package/drawer_template.dart';

class DistancePage extends StatefulWidget {
  const DistancePage({ Key? key }) : super(key: key);

  @override
  State<DistancePage> createState() => _DistancePageState();
}

class _DistancePageState extends State<DistancePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Distance converter',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        tabBarTheme: const TabBarTheme(
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
        ),
      ),
      home:
      DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Distance converter'),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(text: 'Miles'),
                Tab(text: 'Feets'),
                Tab(text: 'Inches'),
              ],
            ),
          ),
          drawer: const DrawerTemplate(),
          body: const TabBarView(
            children: <Widget>[
              Center (
                child: MilesPage(),
              ),
              Center(
                child: FeetsPage(),
              ),
              Center(
                child: InchesPage(),
              ),
            ],
          ),
          ),
        ),
    );
  }
}

class MilesPage extends StatefulWidget {
  const MilesPage({ Key? key }) : super(key: key);

  @override
  State<MilesPage> createState() => _MilesPageState();
}

class _MilesPageState extends State<MilesPage> {
  TextEditingController myController = TextEditingController();

  List<String> messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(top: 100),
            child: Text(
              'miles to kilometers'.toUpperCase(), 
              style: const TextStyle(
                  fontSize: 50, 
                  fontWeight: FontWeight.bold
                ),
              ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                TextFieldTemplate(title: 'Feets'),
                TextFieldTemplate(title: 'Meters'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FeetsPage extends StatefulWidget {
  const FeetsPage({ Key? key }) : super(key: key);

  @override
  State<FeetsPage> createState() => _FeetsPageState();
}

class _FeetsPageState extends State<FeetsPage> {
  TextEditingController myController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(top: 100),
            child: Text(
              'feets to meters'.toUpperCase(), 
              style: const TextStyle(
                  fontSize: 50, 
                  fontWeight: FontWeight.bold
                ),
              ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                TextFieldTemplate(title: 'Feets'),
                TextFieldTemplate(title: 'Meters'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InchesPage extends StatefulWidget {
  const InchesPage({ Key? key }) : super(key: key);

  @override
  State<InchesPage> createState() => _InchesPageState();
}

class _InchesPageState extends State<InchesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(top: 100),
            child: Text(
              'inches to centimeters'.toUpperCase(), 
              style: const TextStyle(
                  fontSize: 50, 
                  fontWeight: FontWeight.bold
                ),
              ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                TextFieldTemplate(title: 'Feets'),
                TextFieldTemplate(title: 'Meters'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}