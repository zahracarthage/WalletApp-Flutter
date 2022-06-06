import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class balanceCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;

  const balanceCard(this.balance, this.cardNumber, this.expiryMonth,
      this.expiryYear, this.color,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
          width: 300,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Balance',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '\$ ${balance}',
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '**** ${cardNumber} ',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '${expiryMonth}/${expiryYear}',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )
            ],
          )),
    );
  }
}
