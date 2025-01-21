import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KesfetPage extends StatefulWidget {
  const KesfetPage({super.key});

  @override
  State<KesfetPage> createState() => _KesfetPageState();
}

class _KesfetPageState extends State<KesfetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.amber,
          statusBarIconBrightness: Brightness.dark,
        ),
        bottomOpacity: 0.0,
        scrolledUnderElevation: 10,
        surfaceTintColor: Colors.amber,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Container(),
        ),
        title: Text('Keşfet'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                await Future.delayed(Duration(seconds: 1));
              },
              child: GridView.builder(
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {},
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
            ),
          )
        ],
      ),
    );
  }
}
