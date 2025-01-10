import 'package:binbel/screens/ana_sayfa.dart';
import 'package:binbel/screens/sohbet.dart';
import 'package:binbel/screens/yayinla.dart';
import 'package:flutter/material.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';

import 'kesfet.dart';
import 'profil.dart';

class GeneraelPage extends StatefulWidget {
  const GeneraelPage({super.key});

  @override
  State<GeneraelPage> createState() => _GeneraelPageState();
}

class _GeneraelPageState extends State<GeneraelPage> {
  List<Widget> sayfalar = <Widget>[
    AnaSayfa(),
    KesfetPage(),
    YayinlaPage(),
    SohbetPage(),
    ProfilePage(),
  ];
  int seciliSayfa = 0;

  void sayfaDegistir(int index) {
    setState(() {
      seciliSayfa = index;
    });
  }

  List<TabItem> tabItems = List.of([
    TabItem(Icons.home, "Ana Sayfa", Colors.red,
        labelStyle: TextStyle(fontWeight: FontWeight.normal)),
    TabItem(Icons.search, "Keşfet", Colors.orange,
        labelStyle: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
    TabItem(Icons.add, "Yayınla", Colors.teal,
        labelStyle: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
    TabItem(Icons.chat, "Sohbet", Colors.blue,
        labelStyle: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
    TabItem(Icons.person, "Profil", Colors.cyan,
        labelStyle: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
  ]);

  late CircularBottomNavigationController tabController;
  @override
  void initState() {
    tabController = CircularBottomNavigationController(seciliSayfa);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sayfalar.elementAt(seciliSayfa),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 12),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20), // Sol alt köşe
            bottomRight: Radius.circular(20), // Sağ alt köşe
          ),
          child: CircularBottomNavigation(
            barHeight: 70,
            allowSelectedIconCallback: true,
            selectedPos: seciliSayfa,
            barBackgroundColor: const Color.fromARGB(255, 204, 234, 248),
            tabItems,
            selectedCallback: (int? selectedPos) {
              setState(() {
                seciliSayfa = selectedPos!;
              });
            },
            controller: tabController,
          ),
        ),
      ),
      extendBody: true,
    );
  }
}
