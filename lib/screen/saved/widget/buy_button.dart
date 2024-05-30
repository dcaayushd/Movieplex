import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: gWidth,
      height: gHeight / 12,
      child: FadeInUp(
        delay: const Duration(milliseconds: 1000),
        child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 0,
          onPressed: () {},
          color: Colors.red,
          child: const FittedBox(
              child: Text(
            "Buy Now",
            style: TextStyle(color: Colors.white, fontSize: 20),
          )),
        ),
      ),
    );
  }
}
