// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class YayinlaButton extends StatelessWidget {
  YayinlaButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.color,
    required this.icon,
  });
  String text;
  void Function()? onTap;
  Color color;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          height: MediaQuery.sizeOf(context).height * 0.1,
          width: MediaQuery.sizeOf(context).width * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon,size: 50,),
              Text(text,style: TextStyle(fontSize: 20),),
            ],
          ),
        ),
      ),
    );
  }
}
