import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe/my_mab_box.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class TicTacToe extends StatefulWidget {
  @override
  _TicTacToeState createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  //player1 o
  bool player = true;
  String p1Text = "O";
  String p2Text = "X";
  String noText = "";
  List<int> player1Selected = [];
  List<int> player2Selected = [];

  player1Winner()
  {
    if(player1Selected.contains(1) && player1Selected.contains(2) && player1Selected.contains(3))
      {
        print("player1 is a winner");
        player1Selected.clear();
        player2Selected.clear();
        player = true;
      }
    else if(player1Selected.contains(4) && player1Selected.contains(5) && player1Selected.contains(6))
    {
      print("player1 is a winner");
      player1Selected.clear();
      player2Selected.clear();
      player = true;
    }
    else if(player1Selected.contains(7) && player1Selected.contains(8) && player1Selected.contains(9))
    {
      print("player1 is a winner");
      player1Selected.clear();
      player2Selected.clear();
      player = true;
    }
    else if(player1Selected.contains(1) && player1Selected.contains(4) && player1Selected.contains(7))
    {
      print("player1 is a winner");
      player1Selected.clear();
      player2Selected.clear();
      player = true;
    }
    else if(player1Selected.contains(2) && player1Selected.contains(5) && player1Selected.contains(8))
    {
      print("player1 is a winner");
      player1Selected.clear();
      player2Selected.clear();
      player = true;
    }
    else if(player1Selected.contains(3) && player1Selected.contains(6) && player1Selected.contains(9))
    {
      print("player1 is a winner");
      player1Selected.clear();
      player2Selected.clear();
      player = true;
    }
    else if(player1Selected.contains(1) && player1Selected.contains(5) && player1Selected.contains(9))
    {
      print("player1 is a winner");
      player1Selected.clear();
      player2Selected.clear();
      player = true;
    }
    else if(player1Selected.contains(3) && player1Selected.contains(5) && player1Selected.contains(7))
    {
      print("player1 is a winner");
      player1Selected.clear();
      player2Selected.clear();
      player = true;
    }


  }
  player2Winner()
  {
    if(player2Selected.contains(1) && player2Selected.contains(2) && player2Selected.contains(3))
    {
      print("player2 is a winner");
      player1Selected.clear();
      player2Selected.clear();
      player = true;
    }
    else if(player2Selected.contains(4) && player2Selected.contains(5) && player2Selected.contains(6))
    {
      print("player2 is a winner");
      player1Selected.clear();
      player2Selected.clear();
      player = true;
    }
    else if(player2Selected.contains(7) && player2Selected.contains(8) && player2Selected.contains(9))
    {
      print("player2 is a winner");
      player1Selected.clear();
      player2Selected.clear();
      player = true;
    }
    else if(player2Selected.contains(1) && player2Selected.contains(4) && player2Selected.contains(7))
    {
      print("player2 is a winner");
      player1Selected.clear();
      player2Selected.clear();
      player = true;
    }
    else if(player2Selected.contains(2) && player2Selected.contains(5) && player2Selected.contains(8))
    {
      print("player2 is a winner");
      player1Selected.clear();
      player2Selected.clear();
      player = true;
    }
    else if(player2Selected.contains(3) && player2Selected.contains(6) && player2Selected.contains(9))
    {
      print("player2 is a winner");
      player1Selected.clear();
      player2Selected.clear();
      player = true;
    }
    else if(player2Selected.contains(1) && player2Selected.contains(5) && player2Selected.contains(9))
    {
      print("player2 is a winner");
      player1Selected.clear();
      player2Selected.clear();
      player = true;
    }
    else if(player2Selected.contains(3) && player2Selected.contains(5) && player2Selected.contains(7))
    {
      print("player2 is a winner");
      player1Selected.clear();
      player2Selected.clear();
      player = true;
    }


  }

  myTextO(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 100,
      ),
    );
  }

  myContainer(
      {Widget child, VoidCallback onClick, bool player, String myText}) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
          //color: Colors.blue,
          height: MediaQuery.of(context).size.width * .3,
          width: MediaQuery.of(context).size.width * .3,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 3),
            color: Colors.blue,
          ),
          child: Center(child: child)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              myContainer(
                  child: player1Selected.contains(1)
                      ? myTextO(p1Text)
                      : player2Selected.contains(1)
                          ? myTextO(p2Text)
                          : myTextO(noText),
                  onClick: () {
                    if (!player1Selected.contains(1) &&
                        !player2Selected.contains(1)) {
                      if (player) {
                        player1Selected.add(1);
                        player = !player;
                      }
                      else if (!player) {
                        player2Selected.add(1);
                        player = !player;
                      }
                      setState(() {

                      });
                    }
                    player1Winner();
                    player2Winner();
                  }),
              myContainer(
                  child: player1Selected.contains(2)
                      ? myTextO(p1Text)
                      : player2Selected.contains(2)
                      ? myTextO(p2Text)
                      : myTextO(noText),
                  onClick: () {
                    if (!player1Selected.contains(2) &&
                        !player2Selected.contains(2)) {
                      if (player) {
                        player1Selected.add(2);
                        player = !player;
                      }
                      else if (!player) {
                        player2Selected.add(2);
                        player = !player;
                      }
                      setState(() {

                      });
                    }
                    player1Winner();
                    player2Winner();
                  }),
              myContainer(
                  child: player1Selected.contains(3)
                      ? myTextO(p1Text)
                      : player2Selected.contains(3)
                      ? myTextO(p2Text)
                      : myTextO(noText),
                  onClick: () {
                    if (!player1Selected.contains(3) &&
                        !player2Selected.contains(3)) {
                      if (player) {
                        player1Selected.add(3);
                        player = !player;
                      }
                      else if (!player) {
                        player2Selected.add(3);
                        player = !player;
                      }
                      setState(() {

                      });
                    }
                    player1Winner();
                    player2Winner();
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              myContainer(
                  child: player1Selected.contains(4)
                      ? myTextO(p1Text)
                      : player2Selected.contains(4)
                      ? myTextO(p2Text)
                      : myTextO(noText),
                  onClick: () {
                    if (!player1Selected.contains(4) &&
                        !player2Selected.contains(4)) {
                      if (player) {
                        player1Selected.add(4);
                        player = !player;
                      }
                      else if (!player) {
                        player2Selected.add(4);
                        player = !player;
                      }
                      setState(() {

                      });
                    }
                    player1Winner();
                    player2Winner();
                  }),
              myContainer(
                  child: player1Selected.contains(5)
                      ? myTextO(p1Text)
                      : player2Selected.contains(5)
                      ? myTextO(p2Text)
                      : myTextO(noText),
                  onClick: () {
                    if (!player1Selected.contains(5) &&
                        !player2Selected.contains(5)) {
                      if (player) {
                        player1Selected.add(5);
                        player = !player;
                      }
                      else if (!player) {
                        player2Selected.add(5);
                        player = !player;
                      }
                      setState(() {

                      });
                    }
                    player1Winner();
                    player2Winner();
                  }),
              myContainer(
                  child: player1Selected.contains(6)
                      ? myTextO(p1Text)
                      : player2Selected.contains(6)
                      ? myTextO(p2Text)
                      : myTextO(noText),
                  onClick: () {
                    if (!player1Selected.contains(6) &&
                        !player2Selected.contains(6)) {
                      if (player) {
                        player1Selected.add(6);
                        player = !player;
                      }
                      else if (!player) {
                        player2Selected.add(6);
                        player = !player;
                      }
                      setState(() {

                      });
                    }
                    player1Winner();
                    player2Winner();
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              myContainer(
                  child: player1Selected.contains(7)
                      ? myTextO(p1Text)
                      : player2Selected.contains(7)
                      ? myTextO(p2Text)
                      : myTextO(noText),
                  onClick: () {
                    if (!player1Selected.contains(7) &&
                        !player2Selected.contains(7)) {
                      if (player) {
                        player1Selected.add(7);
                        player = !player;
                      }
                      else if (!player) {
                        player2Selected.add(7);
                        player = !player;
                      }
                      setState(() {

                      });
                    }
                    player1Winner();
                    player2Winner();
                  }),
              myContainer(
                  child: player1Selected.contains(8)
                      ? myTextO(p1Text)
                      : player2Selected.contains(8)
                      ? myTextO(p2Text)
                      : myTextO(noText),
                  onClick: () {
                    if (!player1Selected.contains(8) &&
                        !player2Selected.contains(8)) {
                      if (player) {
                        player1Selected.add(8);
                        player = !player;
                      }
                      else if (!player) {
                        player2Selected.add(8);
                        player = !player;
                      }
                      setState(() {

                      });
                    }
                    player1Winner();
                    player2Winner();
                  }),
              myContainer(
                  child: player1Selected.contains(9)
                      ? myTextO(p1Text)
                      : player2Selected.contains(9)
                      ? myTextO(p2Text)
                      : myTextO(noText),
                  onClick: () {
                    if (!player1Selected.contains(9) &&
                        !player2Selected.contains(9)) {
                      if (player) {
                        player1Selected.add(9);
                        player = !player;
                      }
                      else if (!player) {
                        player2Selected.add(9);
                        player = !player;
                      }
                      setState(() {

                      });
                    }
                    player1Winner();
                    player2Winner();
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
