import 'dart:async';
import 'package:cashpay/startupscreens/cashpayinfo.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class StartUpPage extends StatefulWidget {
  @override
  const StartUpPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return StartUpPageState();
  }
}

class StartUpPageState extends State<StartUpPage> {
  double _opacity = 1.0;
  @override
  void initState() {
    super.initState();
    //Navigating to cashpay info,
    Timer(Duration(seconds: 5), () {
      //Navigating after 5 seconds
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => CashPayInfo()));
    });

    //fading out to cashpay info
    Timer(Duration(seconds: 2), () {
      //delaying fading out after 2 seconds
      setState(() {
        _opacity = 0.0; //fade out
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: AnimatedOpacity(
        opacity: _opacity,
        duration: Duration(seconds: 3),//Fade out
        child: DecoratedBox(
          decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage("assets/images/background.jpg"),
                  fit: BoxFit.fitHeight,
                  opacity: 0.08)),
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  "assets/logo/cash.png",
                  height: 18.h,
                ),
                Positioned(
                  bottom: 0,
                  child: Column(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text.rich(
                            TextSpan(
                                text: "Cash",
                                style: theme.textTheme.labelMedium?.copyWith(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.italic,
                                ),
                                children: [
                                  TextSpan(
                                      text: 'Pay',
                                      style:
                                          theme.textTheme.labelMedium?.copyWith(
                                        color: theme.primaryColor,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w900,
                                        fontStyle: FontStyle.italic,
                                      ))
                                ]),
                          )),
                      Text(
                        "The safe, Easier Way to Pay",
                        style: theme.textTheme.bodySmall,
                      )
                    ],
                  ),
                ),
              ],
            ),
            // Image.asset("assets/logo/cash.png"),
          ),
        ),
      ),
    );
  }
}
