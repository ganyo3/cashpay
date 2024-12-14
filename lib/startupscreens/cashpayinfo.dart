import 'package:carousel_slider/carousel_slider.dart';
import 'package:cashpay/subscribe/verify_code.dart';
import 'package:flutter/material.dart';
import 'package:cashpay/common/widgets/custom_buttons.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../subscribe/sign_up.dart';

class CashPayInfo extends StatefulWidget {
  @override
  const CashPayInfo({super.key});

  @override
  State<StatefulWidget> createState() {
    return CashPayInfoState();
  }
}

class CashPayInfoState extends State<CashPayInfo> {
  int carouselIndex = 0;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
        child: Column(
          children: [
            carousel(),
            // const Spacer(),
            SizedBox(height: 8.h,),
            Button(
              shadowColor: Colors.black87,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const LogIn()));
                },
                borderRadius: 8,
                color: const Color(0xFF08034E),
                //  padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20.w),
                buttonText: 'Next'),
                SizedBox(height: 1.5.h,),
            Align(
                child: TextButton(
                    onPressed: () {},
                    child: Text("Skip", style: theme.textTheme.bodyLarge)))
          ],
        ),
      ),
    );
  }

// carousel
  carousel() {
    var theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 53.h,
            autoPlay: true,
            enlargeCenterPage: false,
            viewportFraction: 2,
            onPageChanged: (index, reason) {
              setState(() {
                carouselIndex = index;
              });
            },
          ),
          items: [
            Column(
              children: [
                Image.asset(
                  "assets/images/cart.jpg",
                  height: 40.h,
                ),
                SizedBox(
                  height: 2.5.h,
                ),
                Text(
                  "The Fastest, Easier way to pay",
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontSize: 14,
                    color: const Color(0xFF08034E),
                      fontWeight: FontWeight.w800, fontStyle: FontStyle.italic),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 1.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        "Up to 10 days of buyer protection",
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontSize:10,
                        ),
                      ),
                      Text(
                        "No need to top up your wallet",
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontSize:10,
                        ),
                      ),
                      Text(
                        "Free return shipping and faster",
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontSize:10,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                Image.asset(
                  "assets/images/send.jpg",
                  height: 40.h,
                ),
                SizedBox(
                  height: 2.5.h,
                ),
                Text(
                  "Send and Request payment with cashpay",
                  style: theme.textTheme.titleMedium?.copyWith(
                     fontSize: 14,
                     color: const Color(0xFF08034E),
                      fontWeight: FontWeight.w800, fontStyle: FontStyle.italic),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 1.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        "Up to 10 days of buyer protection",
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontSize:10,
                        ),
                      ),
                      Text(
                        "No need to top up your wallet",
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontSize:10,
                        ),
                      ),
                      Text(
                        "Free return shipping and faster",
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontSize:10,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                Image.asset(
                  "assets/images/shop.jpg",
                  height: 40.h,
                ),
                SizedBox(
                  height: 2.5.h,
                ),
                Text(
                  "Shop worry free with cashpay",
                  style: theme.textTheme.titleMedium?.copyWith(
                     fontSize: 14,
                     color: const Color(0xFF08034E),
                      fontWeight: FontWeight.w800, fontStyle: FontStyle.italic),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 1.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        "Up to 10 days of buyer protection",
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontSize:10,
                        ),
                      ),
                      Text(
                        "No need to top up your wallet",
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontSize:10,
                        ),
                      ),
                      Text(
                        "Free return shipping and faster",
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontSize:10,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                Image.asset(
                  "assets/images/cardlink.jpg",
                  height: 40.h,
                ),
                SizedBox(
                  height: 2.5.h,
                ),
                Text(
                  "Chack out fastest cord lin in cashpay",
                  style: theme.textTheme.titleMedium?.copyWith(
                     fontSize: 14,
                     color: const Color(0xFF08034E),
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 1.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        "Up to 10 days of buyer protection",
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontSize:10,
                        ),
                      ),
                      Text(
                        "No need to top up your wallet",
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontSize:10,
                        ),
                      ),
                      Text(
                        "Free return shipping and faster",
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontSize:10,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            4,
            (index) => buildDot(
                index: index, currentImgIndex: carouselIndex, context: context),
          ),
        ),
      ],
    );
  }
}

Widget buildDot(
    {required int index,
    required int currentImgIndex,
    required BuildContext context}) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 500),
    margin: const EdgeInsets.only(right: 5),
    height: 8,
    width: currentImgIndex == index ? 8 : 8,
    decoration: BoxDecoration(
      border: Border.all(color: Theme.of(context).primaryColor),
      borderRadius: BorderRadius.circular(5),
      color: currentImgIndex == index
          ? Theme.of(context).primaryColor
          : Colors.white,
    ),
  );
}

//login
class LogIn extends StatefulWidget {
  @override
  const LogIn({super.key});

  @override
  State<StatefulWidget> createState() {
    return LogInState();
  }
}

class LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
       resizeToAvoidBottomInset: false,
        body: DecoratedBox(
        decoration: BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.center,
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.fitHeight,
                opacity: 0.08)),
        child:  Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
            child: GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              behavior: HitTestBehavior.translucent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          "assets/logo/cash.png",
                          height: 12.h,
                          width: 50.w,
                        ),
                      ),
                      Positioned(
                        bottom: 4.5.h,
                     left: 32.5.w,
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
                        ),),
                     Positioned(
                          bottom: 2.5.h,
                          left: 10.w,
                          right: 10.w,
                          child: Text(
                            "The safer, easier way to pay",
                            style: theme.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w700,fontSize: 10),
                            textAlign: TextAlign.center,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text(
                          "Fast & Secure",
                          style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w900,
                                color: const Color(0xFF08034E),
                              fontSize: 18,
                              fontStyle: FontStyle.italic),
                        ),
                        Text(
                          "the safer and easier",
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.primaryColor,
                            fontSize: 10,
                          ),
                          softWrap: true,
                        ),
                        Text(
                          "way to pay with cashpay",
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.primaryColor,
                            fontSize: 10,
                          ),
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  //Submit Button
                  Button(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const VerifyCode()));
                      },
                      borderRadius: 8,
                      shadowColor: Colors.black87,
                      color: const Color(0xFF08034E),
                      //  padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20.w),
                      buttonText: 'Sign In'),
                  SizedBox(
                    height: 1.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUp()));
                        },
                        child: Text("Create a new accountt",style: theme.textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w700
                        ))),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
