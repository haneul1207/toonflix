import 'package:flutter/material.dart';

class Wallet extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final Color color1;
  final Color color2;
  final IconData icon;
  final double y;

  const Wallet({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.color1,
    required this.color2,
    required this.icon,
    required this.y,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, y),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: color1,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                      color: color2, fontWeight: FontWeight.w400, fontSize: 30),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      text2,
                      style: TextStyle(
                        color: color2,
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      text3,
                      style: TextStyle(
                        color: color2.withOpacity(0.6),
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              // overflow 하는 방법
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(8, 17),
                child: Icon(
                  icon,
                  color: color2,
                  size: 68,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
