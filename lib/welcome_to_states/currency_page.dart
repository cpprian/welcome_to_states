import 'package:flutter/material.dart';
import '../package/text_field_template.dart';
import '../package/drawer_template.dart';


class CurrencyPage extends StatefulWidget {
  const CurrencyPage({ Key? key }) : super(key: key);

  @override
  State<CurrencyPage> createState() => _CurrencyPageState();
}

class _CurrencyPageState extends State<CurrencyPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Currency converter',
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
            title: const Text('Currency converter'),
          ),
          drawer: const DrawerTemplate(),
          body: DollarsPage(),
          ),
        ),
    );
  }
}

class DollarsPage extends StatefulWidget {
  const DollarsPage({ Key? key }) : super(key: key);

  @override
  State<DollarsPage> createState() => _DollarsPageState();
}

class _DollarsPageState extends State<DollarsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(top: 100),
            child: Text(
              'dollars to euros'.toUpperCase(), 
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
                TextFieldTemplate(title: 'Dollars'),
                TextFieldTemplate(title: 'Euros'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}