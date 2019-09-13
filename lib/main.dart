import 'package:flutter/material.dart';

import 'package:nubank_clone/widgets/header.dart';
import 'package:nubank_clone/widgets/tabs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank Clone',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        backgroundColor: Color(0xff8B10AE),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            AppHeader(),
            AppTabs(items: <AppTabsItem>[
              AppTabsItem(text: 'Indicar Amigo', icon: Icons.person_add),
              AppTabsItem(text: 'Cobrar', icon: Icons.chat_bubble_outline),
              AppTabsItem(text: 'Depositar', icon: Icons.arrow_downward),
              AppTabsItem(text: 'Transferir', icon: Icons.arrow_upward),
              AppTabsItem(text: 'Bloquear cartão', icon: Icons.lock),
            ])
          ],
        ),
      ),
    );
  }
}
