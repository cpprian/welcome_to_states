import 'package:flutter/material.dart';
import '../package/text_field_template.dart';
import '../package/drawer_template.dart';

class WeightPage extends StatefulWidget {
  const WeightPage({ Key? key }) : super(key: key);

  @override
  State<WeightPage> createState() => _WeightPageState();
}

class _WeightPageState extends State<WeightPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weight converter',
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
            title: const Text('Weight converter'),
          ),
          drawer: const DrawerTemplate(),
          body: PoundsPage(),
          ),
        ),
    );
  }
}

class PoundsPage extends StatefulWidget {
  const PoundsPage({ Key? key }) : super(key: key);

  @override
  State<PoundsPage> createState() => _PoundsPageState();
}

class _PoundsPageState extends State<PoundsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(top: 100),
            child: Text(
              'pounds to kilograms'.toUpperCase(), 
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
                TextFieldTemplate(title: 'Pounds'),
                TextFieldTemplate(title: 'Kilograms'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}