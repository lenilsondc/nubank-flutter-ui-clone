import 'package:flutter/material.dart';

class AppMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
            border:
                Border(top: BorderSide(color: Colors.white.withOpacity(.8)))),
        child: Column(
          children: <Widget>[
            AppMenuItem(text: 'Me ajuda', icon: Icons.help_outline),
            AppMenuItem(text: 'Perfil', icon: Icons.person_outline),
            AppMenuItem(text: 'Configurar cartão', icon: Icons.credit_card),
            AppMenuItem(text: 'Configurações do app', icon: Icons.smartphone),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                color: Colors.white.withOpacity(.8))),
                        child: Text(
                          'SAIR DO APP',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class AppMenuItem extends StatelessWidget {
  final String text;
  final IconData icon;

  AppMenuItem({this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.white.withOpacity(.8)))),
            child: Row(
              children: <Widget>[
                Icon(
                  icon,
                  color: Colors.white,
                ),
                SizedBox(width: 20),
                Text(
                  text,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
