import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Demo Flutter',
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: HomePage(),
      );
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> names = [
    'bumi',
    'gunung',
    'langit',
    'laut',
    'matahari',
    'niagara'
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Demo GridView'),
        ),
        body: GridView.count(
            crossAxisCount: 3,
            children: List.generate(names.length, (index) {
              return GridTile(
                child: GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                'images/' + names[index] + '.jpeg'))),
                  ),
                  onTap: () {
                    print('Anda memiliki ${names[index]}.jpeg');
                  },
                ),
              );
            })),
      );
}
