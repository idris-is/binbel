import 'package:flutter/material.dart';

class KesfetPage extends StatefulWidget {
  const KesfetPage({super.key});

  @override
  State<KesfetPage> createState() => _KesfetPageState();
}

class _KesfetPageState extends State<KesfetPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
        Expanded(
          child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      print('Tıklandı');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.amber),
                      child: Center(
                        child: Text('Kesfet $index'),
                      ),
                    ),
                  ),
                );
              },
              itemCount: 20,
              ),
        )
      ],
    );
  }
}
