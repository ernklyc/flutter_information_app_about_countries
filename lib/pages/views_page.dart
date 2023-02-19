import 'package:flutter/material.dart';
import 'package:uplabs_2/utility/constants/constants.dart';
import '../utility/langue/texts.dart';

// ignore: must_be_immutable
class ViewsPage extends StatefulWidget {
  int newIndex;

  ViewsPage({Key? key, required this.newIndex}) : super(key: key);

  @override
  State<ViewsPage> createState() => _ViewsPageState();
}

class _ViewsPageState extends State<ViewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          InfoPageTexts().cityName[widget.newIndex],
          style: const TextStyle(color: Colors.white, fontSize: 15, letterSpacing: 2),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: const Color.fromARGB(255, 29, 29, 29),
      body: Center(
        child: Stack(
          children: [
            FractionallySizedBox(
              widthFactor: 2,
              child: Opacity(
                opacity: 0.35,
                child: Image(
                  image: AssetImage(
                      InfoPageImage().infoPageImage[widget.newIndex]),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 200, left: 20, right: 20, bottom: 10),
              child: Center(
                child: Container(
                  height: 200,
                  color: Colors.transparent,
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    InfoPageTexts().cityName[widget.newIndex],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      letterSpacing: 5,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 350, left: 25, right: 25),
              child: Center(
                child: Container(
                  height: 200,
                  color: Colors.transparent,
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    ViewsPageText().cityInfo[widget.newIndex],
                    style: TextStyle(
                      color: Colors.white70.withOpacity(.75),
                      fontSize: 15,
                      letterSpacing: 0,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
