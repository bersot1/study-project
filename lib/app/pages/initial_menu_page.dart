import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class InitialMenuPage extends StatefulWidget {
  @override
  InitialMenuPageState createState() => InitialMenuPageState();
}

class InitialMenuPageState extends State<InitialMenuPage> {
  @override
  void initState() {
    super.initState();
  }

  _moveToModelChose(String path) {
    Modular.to.pushNamed(path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            MenuButton(
              buttonColor: Colors.blue,
              fontCollor: Colors.white,
              func: () => _moveToModelChose('/pokemon'),
              title: "Pokemon\nmodular e mobx",
            ),
            MenuButton(
              buttonColor: Colors.yellow,
              fontCollor: Colors.black,
              func: () => _moveToModelChose('/todo'),
              title: "Todo \n modular, mobx, hive",
            )
          ],
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final String title;
  final Color buttonColor;
  final Color fontCollor;
  final Function func;

  const MenuButton({
    @required this.title,
    @required this.buttonColor,
    @required this.fontCollor,
    @required this.func,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: size.width / 2.5,
        height: size.height / 3.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: buttonColor,
        ),
        child: FlatButton(
          onPressed: func,
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: fontCollor),
          ),
        ),
      ),
    );
  }
}
