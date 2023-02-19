import 'package:flutter/material.dart';
import 'package:uplabs_2/pages/views_page.dart';
import 'package:uplabs_2/utility/constants/constants.dart';
import 'package:uplabs_2/utility/langue/texts.dart';

// ignore: must_be_immutable
class InfoPage extends StatefulWidget {
  int countryIndex;
  InfoPage({Key? key, required this.countryIndex}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemaColors().themaColor,
      appBar: AppBar(
        title: Text(
          CountryShortName().heading[widget.countryIndex],
          style: const TextStyle(color: Colors.white, fontSize: 15, letterSpacing: 2),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 8,
                controller: PageController(viewportFraction: 0.9),
                onPageChanged: (int index) => setState(() => _index = index),
                itemBuilder: (_, i) {
                  return Transform.scale(
                    scale: i == _index ? 1 : 0,
                    filterQuality: FilterQuality.high,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 9, bottom: 9),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.4),
                                spreadRadius: 0,
                                blurRadius: 10,
                                blurStyle: BlurStyle.normal),
                          ],
                        ),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image(
                                image: AssetImage(
                                    InfoPageImage().infoPageImage[_index]),
                                fit: BoxFit.cover,
                                filterQuality: FilterQuality.high,
                              ),
                            ),
                            Container(
                              alignment: AlignmentDirectional.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 25),
                                child: Text(
                                  InfoPageTexts().cityName[_index],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    letterSpacing: 2,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          //-------------

          Container(
            margin: const EdgeInsetsDirectional.only(top: 20),
            width: 260,
            alignment: AlignmentDirectional.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Text(
                  InfoPageTexts().cityDes[_index],
                  style: const TextStyle(
                      color: Colors.white, fontSize: 15, letterSpacing: 2),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return ViewsPage(
                        newIndex: _index,
                      );
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  shadowColor: Colors.black, backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 8, right: 8, top: 8, bottom: 8),
                child: Text(
                  InfoPageTexts().buttonText[0],
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
