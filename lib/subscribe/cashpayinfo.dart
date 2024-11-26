import 'package:carousel_slider/carousel_slider.dart';
import 'package:cashpay/subscribe/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:cashpay/common/widgets/custom_buttons.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'sign_up.dart';

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
            const Spacer(),
            Button(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const LogIn()));
                },
                borderRadius: 8,
                color: const Color.fromARGB(255, 8, 3, 78),
                //  padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20.w),
                buttonText: 'Next'),
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
            height: 60.h,
            autoPlay: true,
            enlargeCenterPage: false,
            viewportFraction: 1,
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
                  style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w800, fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 1.h,
                ),
                const Text("Up to 10 days of buyer protection"),
                const Text("No need to top up your wallet"),
                const Text("Free return shipping and faster"),
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
                  style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w800, fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 1.h,
                ),
                 const Text("Up to 10 days of buyer protection"),
                const Text("No need to top up your wallet"),
                const Text("Free return shipping and faster"),],
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
                  style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w800, fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 1.h,
                ),
                const Text("Up to 10 days of buyer protection"),
                const Text("No need to top up your wallet"),
                const Text("Free return shipping and faster"),],
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
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                const Text("Up to 10 days of buyer protection"),
                const Text("No need to top up your wallet"),
                const Text("Free return shipping and faster"),],
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
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
    height: 6,
    width: currentImgIndex == index ? 6 : 6,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: currentImgIndex == index
          ? Theme.of(context).primaryColor
          : Colors.grey,
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
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 8.h),
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
                    alignment: Alignment.topCenter,
                    children: [
                      Image.asset(
                        "assets/logo/cash.png",
                        height: 15.h,
                        width: 58.w,
                      ),
                      Positioned(
                        bottom: 5.h,
                        right: 0.w,
                        child: Text.rich(
                          TextSpan(
                              text: "Cash",
                              style: theme.textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Pay',
                                  style: theme.textTheme.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: theme.primaryColor,
                                    fontSize: 25,
                                  ),
                                )
                              ]),
                        ),
                      ),
                      Positioned(
                          bottom: 3.h,
                          right: 0.w,
                          child: const Text("The safer, easier way to pay"))
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
                          style: theme.textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w800,
                              fontSize: 25,
                              fontStyle: FontStyle.italic),
                        ),
                        Text(
                          "the safer and easier way to pay with cashpay",
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.primaryColor,
                            fontSize: 15,
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
                                builder: (context) => const SignIn()));
                      },
                      borderRadius: 8,
                      color: const Color.fromARGB(255, 8, 3, 78),
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
                        child: const Text("Create a new accountt")),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
