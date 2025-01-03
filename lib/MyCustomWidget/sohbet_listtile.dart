// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';

class SohbetListtile extends StatelessWidget {
  SohbetListtile({
    super.key,
    required this.tProfileImage,
    required this.Name,
    required this.theLastMessage,
  });
  String tProfileImage;
  String Name;
  String theLastMessage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: GestureDetector(
        onLongPress: () {
          showDialog(
              context: context,
              builder: (context) => BottomSheet(
                    onClosing: () {
                      Navigator.pop(context);
                    },
                    builder: (context) => SizedBox(
                      height: 120,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.delete),
                            title: Text("Sil"),
                          ),
                          ListTile(
                            leading: Icon(Icons.block),
                            title: Text("Engelle"),
                          ),
                        ],
                      ),
                    ),
                  ));
        },
        onTap: () {},
        child: Container(
          color: const Color.fromARGB(255, 152, 245, 155),
          height: MediaQuery.sizeOf(context).height * 0.1,
          width: MediaQuery.sizeOf(context).width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => Dialog(
                              child: Image(
                                image: AssetImage(tProfileImage),
                                loadingBuilder:
                                    (context, child, loadingProgress) {
                                  if (loadingProgress == null) {
                                    return child;
                                  } else {
                                    return Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  }
                                },
                              ),
                            ));
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage(tProfileImage),
                    radius: 30,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Name,
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    theLastMessage,
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    "${TimeOfDay.now().hour}:${TimeOfDay.now().minute}",
                  ),
                  CircleAvatar(
                    child: Text("2"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
