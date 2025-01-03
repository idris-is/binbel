import 'package:binbel/MyCustomWidget/sohbet_listtile.dart';
import 'package:flutter/material.dart';

class SohbetPage extends StatefulWidget {
  const SohbetPage({super.key});

  @override
  State<SohbetPage> createState() => _SohbetPageState();
}

class _SohbetPageState extends State<SohbetPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return SohbetListtile(
          tProfileImage: "assets/profile.jpg",
          Name: "İdris",
          theLastMessage: "Son Gelen Mesaj",
        );
      },
    );
  }
}