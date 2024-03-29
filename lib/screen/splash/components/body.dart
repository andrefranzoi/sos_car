import 'package:flutter/material.dart';
import 'package:sos_car/components/default_button.dart';
import 'package:sos_car/constants.dart';
import 'package:sos_car/screen/sign_in/sign_in_screen.dart';
import 'package:sos_car/size_config.dart';

import '../components/splash_contents.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int courrentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Bem vindo ao Sos Car, aproveite as facilidades!",
      "image": "assets/images/splash_1.png",
    },
    {
      "text":
          "Ajudamos as pessoas a se conectarem com as lojas.\nEm todo Brasil!",
      "image": "assets/images/splash_2.png",
    },
    {
      "text":
          "Mostramos a maneira fácil de cuidar do seu carro.\nApenas solicite!",
      "image": "assets/images/splash_3.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(
                    () {
                      courrentPage = value;
                    },
                  );
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    DefaultButton(
                      text: "Continue",
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(
        right: 5,
      ),
      height: 6,
      width: courrentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: courrentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
