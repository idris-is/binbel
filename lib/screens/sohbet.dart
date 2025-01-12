import 'package:binbel/widgets/sohbet_listtile.dart';
import 'package:flutter/material.dart';

class SohbetPage extends StatefulWidget {
  const SohbetPage({super.key});

  @override
  State<SohbetPage> createState() => _SohbetPageState();
}

class _SohbetPageState extends State<SohbetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sohbet'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 5,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Ara...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onChanged: (value) {},
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return SohbetListtile(
                  tProfileImage: "assets/profile.jpg",
                  Name: "İdris",
                  theLastMessage: "Son Gelen Mesaj",
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
