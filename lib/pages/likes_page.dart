import 'package:flutter/material.dart';
import 'package:uplabs_2/pages/profil.dart';
import 'package:uplabs_2/utility/constants/constants.dart';
import 'package:uplabs_2/utility/langue/texts.dart';
import 'info_page.dart';

class LikesPage extends StatefulWidget {
  const LikesPage({Key? key}) : super(key: key);
  @override
  State<LikesPage> createState() => _LikesPageState();
}

class _LikesPageState extends State<LikesPage> {
  int currerntIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppBarText().appBarText),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const ProfilePage();
                    },
                  ),
                );
              },
              icon: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.account_circle))),
        ],
      ),
      backgroundColor: ThemaColors().themaColor,
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: FractionallySizedBox(
                          widthFactor: 1,
                          child: SizedBox(
                            height: 87,
                            child: Opacity(
                              opacity: 0.15,
                              child: Image(
                                image: AssetImage(
                                    InfoPageImage().listImage[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      ListTile(
                        isThreeLine: true,
                        trailing: IconButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return InfoPage(
                                      countryIndex: index,
                                    );
                                  },
                                ),
                              );
                            },
                            icon: const Icon(Icons.arrow_right)),
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Text(
                            CountryShortName().shortHeading[index],
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        title: Text(CountryShortName().heading[index],
                            style: const TextStyle(
                                fontSize: 15,
                                letterSpacing: 2,
                                fontWeight: FontWeight.bold)),
                        subtitle: Text(CountryShortName().subtitle[index],
                            style: const TextStyle(
                                fontSize: 15,
                                letterSpacing: 0.65,
                                fontWeight: FontWeight.normal)),
                        iconColor: Colors.white,
                        textColor: Colors.white,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return InfoPage(
                                  countryIndex: index,
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              );
            },
            itemCount: 7,
          ),
        ),
      ),
    );
  }
}
