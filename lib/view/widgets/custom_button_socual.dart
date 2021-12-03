import 'package:e_commerce_app/constance.dart';
import 'package:e_commerce_app/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CustomSocialButton extends StatelessWidget {
  final String image;
  final String name;

  const CustomSocialButton({Key key, this.image, this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
      child: Container(
        padding: EdgeInsets.all(7),
        height: 50,
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width - 100,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black45,
                offset: const Offset(
                  0,
                  1.0,
                ),
                blurRadius: 10.0,
                spreadRadius: 1.0,
              ), //BoxShadow
              /*BoxShadow(
                color: Colors.orange,
                offset: const Offset(0.0, 0.0),
                blurRadius: 10.0,
                spreadRadius: 5.0,
              ), */ //BoxShadow
            ],
            color: Colors.grey.shade300,
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(image),
            ),
            Spacer(),
            CustomText(text: name, fontSize: 16, algiment: Alignment.center),
            Spacer(),
          ],
        ),
      ),
      onTap: () {},
    ));
  }
}
