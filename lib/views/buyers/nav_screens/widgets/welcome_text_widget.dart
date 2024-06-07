import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top, left: 25, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Howdy , What Are You\nLooking For 👀',
            style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                fontFamily: 'Semi-Bold'
            ),
          ),
          SvgPicture.asset('assets/icons/cart.svg', width: 20,)
        ],
      ),
    );
  }
}
