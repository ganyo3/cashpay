import 'package:flutter/material.dart';
import 'package:cashpay/common/widgets/custom_buttons.dart';
import 'package:cashpay/subscribe/sign_up.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../index.dart';

class SignIn extends StatefulWidget {
  @override
  const SignIn({super.key});

  @override
  State<StatefulWidget> createState() {
    return SignInState();
  }
}

class SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(),
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
                          ))
                    ],
                  ),
                  Text(
                    "Sign In \nto Account",
                    style: theme.textTheme.titleLarge,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    "Signin with username or emaill and password to use your account",
                    style: theme.textTheme.bodySmall,
                    softWrap: true,
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  // FormField...
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Email
                      TextFormField(
                          decoration: InputDecoration(
                                 hintText: 'Enter username or email')
                              .applyDefaults(theme.inputDecorationTheme)),
                      SizedBox(
                        height: 1.h,
                      ),
                      // Password
                      TextFormField(
                          // keyboardType: TextInputType.numberWithOptions(),
                          decoration: InputDecoration(
                                hintText: 'Password',
                                  suffixIcon: Icon(Icons.visibility))
                              .applyDefaults(theme.inputDecorationTheme),
                          obscureText: true,
                        ),
                      // FormField End
                    ],
                  ),
                  Spacer(),
                  //Submit Button
                  Button(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      borderRadius: 8,
                      color: const Color.fromARGB(255, 8, 3, 78),
                      //  padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20.w),
                      buttonText: 'Sign In'),
                  SizedBox(
                    height: 1.h,
                  ),
                  Button(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()));
                      },
                      borderRadius: 8,
                      color: theme.primaryColor,
                      //  padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20.w),
                      buttonText: 'Use phone number'),

                  SizedBox(
                    height: 2.5.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: TextButton(
                        onPressed: () {},
                        child: Text.rich(
                          TextSpan(
                              text: "Forgot password |",
                              style: theme.textTheme.labelMedium,
                              children: [
                                WidgetSpan(
                                    child: SizedBox(
                                  width: 2.w,
                                )),
                                TextSpan(
                                    text: 'create account',
                                    style: theme.textTheme.labelMedium
                                        ?.copyWith(color: theme.primaryColor))
                              ]),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

//..........................................
