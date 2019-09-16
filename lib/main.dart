import 'package:flutter/material.dart';
import 'package:nubank_clone/widgets/card.dart';

import 'package:nubank_clone/widgets/header.dart';
import 'package:nubank_clone/widgets/menu.dart';
import 'package:nubank_clone/widgets/tabs.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

const Offset start = Offset(0, 160);
const Offset end = Offset(0, 570);

class _MyAppState extends State<MyApp> {
  Offset _offset = start;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank Clone',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        backgroundColor: Color(0xff8B10AE),
        body: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                AppHeader(),
                Expanded(child: AppMenu()),
                AppTabs(items: <AppTabsItem>[
                  AppTabsItem(text: 'Indicar Amigo', icon: Icons.person_add),
                  AppTabsItem(text: 'Cobrar', icon: Icons.chat_bubble_outline),
                  AppTabsItem(text: 'Depositar', icon: Icons.arrow_downward),
                  AppTabsItem(text: 'Transferir', icon: Icons.arrow_upward),
                  AppTabsItem(text: 'Bloquear cartão', icon: Icons.lock),
                ])
              ],
            ),
            AnimatedContainer(
                duration: Duration(milliseconds: 1000),
                child: Container(
                  child: Transform.translate(
                      offset: _offset,
                      child: GestureDetector(
                        onPanUpdate: (DragUpdateDetails details) {
                          if (_offset.dy >= start.dy - 10 &&
                              _offset.dy <= end.dy + 10) {
                            setState(
                                () => _offset += Offset(0, details.delta.dy));
                          }
                        },
                        onPanEnd: (DragEndDetails details) {
                          if ((_offset.dy - start.dy) >
                              (end.dy - start.dy) / 2) {
                            setState(() => _offset = end);
                          } else {
                            setState(() => _offset = start);
                          }
                        },
                        child: AppCard(),
                      )),
                )),
          ],
        ),
      ),
    );
  }
}
