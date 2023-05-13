import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(flex: 1, child: Text('Score Board')),
            Expanded(
                flex: 3,
                child: GridView.builder(
                  itemCount: 9,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  width: 5, color: Colors.tealAccent),
                              color: Colors.blue),
                          child: Center(
                            child: Text('X',
                                style: GoogleFonts.coiny(
                                    textStyle: TextStyle(fontSize: 64),
                                    color: Colors.red)),
                          )),
                    );
                  },
                )),
            Expanded(flex: 1, child: Text('Timer'))
          ],
        ),
      ),
    );
  }
}
