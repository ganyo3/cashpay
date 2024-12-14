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
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
            child: GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              behavior: HitTestBehavior.translucent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                          right: 5.w,
                          child: Text.rich(
                            TextSpan(
                                text: "Cash",
                                style: theme.textTheme.bodyLarge?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Pay',
                                    style: theme.textTheme.bodyLarge?.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: theme.primaryColor,
                                      fontSize: 20,
                                    ),
                                  )
                                ]),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Sign In \nto Account",
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                      color: const Color(0xFF08034E),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    "Signin with username or emaill and \n password to use your account",
                    style: theme.textTheme.bodySmall?.copyWith(
                        fontSize: 10,
                        color: Colors.blue,
                        fontWeight: FontWeight.w900),
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
                  SizedBox(
                    height: 5.h,
                  ),
                  //Submit Button
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: Column(
                      children: [
                        Button(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomePage()));
                            },
                            borderRadius: 8,
                            color: const Color(0xFF08034E),
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
                      ],
                    ),
                  ),

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
                              style: theme.textTheme.labelMedium?.copyWith(
                                fontWeight: FontWeight.w800,
                              ),
                              children: [
                                WidgetSpan(
                                    child: SizedBox(
                                  width: 1.w,
                                )),
                                TextSpan(
                                    text: 'create account',
                                    style: theme.textTheme.labelMedium
                                        ?.copyWith(color: Colors.blue))
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
