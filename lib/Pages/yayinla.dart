import 'package:binbel/MyCustomWidget/yayinla_button.dart';
import 'package:flutter/material.dart';

class YayinlaPage extends StatelessWidget {
  const YayinlaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 80, bottom: 40),
          child: Text(
            'BınBel',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                final items = [
                  {
                    'text': 'Makale',
                    'color': Colors.red,
                    'icon': Icons.article,
                  },
                  {
                    'text': 'Fotoğraf',
                    'color': Colors.blue,
                    'icon': Icons.photo,
                  },
                  {
                    'text': 'Video',
                    'color': Colors.green,
                    'icon': Icons.video_library,
                  },
                  {
                    'text': 'Sertifika',
                    'color': Colors.orange,
                    'icon': Icons.school,
                  },
                ];

                return YayinlaButton(
                  text: items[index]['text'] as String,
                  color: items[index]['color'] as Color,
                  icon: items[index]['icon'] as IconData,
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Yayınla'),
                          content: Text('Bu buttona tıklandı : ${items[index]['text']}.'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Kapat'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
