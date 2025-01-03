import 'package:binbel/MyCustomWidget/yayinla_button.dart';
import 'package:flutter/material.dart';

class YayinlaPage extends StatefulWidget {
  const YayinlaPage({super.key});

  @override
  State<YayinlaPage> createState() => _YayinlaPageState();
}

class _YayinlaPageState extends State<YayinlaPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 80, bottom: 80),
          child: Text(
            'BınBel',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic
            ),
          ),
        ),
        Center(
          child: GridView(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            children: [
              YayinlaButton(
                text: "Makale",
                onTap: () {},
                color: Colors.red,
                icon: Icons.article,
              ),
              YayinlaButton(
                text: "Fotoğraf",
                onTap: () {},
                color: Colors.blue,
                icon: Icons.photo,
              ),
              YayinlaButton(
                text: "Video",
                onTap: () {},
                color: Colors.green,
                icon: Icons.video_library,
              ),
              YayinlaButton(
                text: "Sertifika",
                onTap: () {},
                color: Colors.orange,
                icon: Icons.school,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
