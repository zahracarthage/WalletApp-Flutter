import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class buttonCard extends StatelessWidget {
  final iconImg;
  final String buttonText;

  const buttonCard(this.buttonText, this.iconImg, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              // color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.white, blurRadius: 30, spreadRadius: 10),
              ]),
          child: Center(
            child: Image.asset('${iconImg}'),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          '${buttonText}',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700]),
        ),
      ],
    );
  }
}
