import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../common/widgets/custom_buttons.dart';
import 'verify_code.dart';

class SignUp extends StatefulWidget {
  @override
  const SignUp({super.key});

  @override
  State<StatefulWidget> createState() {
    return SignUpState();
  }
}

class SignUpState extends State<SignUp> {
  bool _isTapped = false;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
            child: GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              behavior: HitTestBehavior.translucent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Phone\nRegistration",
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: const Color(0xFF08034E),
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    "Please enter your valid phone number. We will send you a 4-digit code to verify your account.",
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: const Color(0xFF08034E),
                      fontSize: 10,
                    ),
                    softWrap: true,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Enter Your Location",
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: const Color(0xFF08034E),
                      fontWeight: FontWeight.w800,
                      fontSize: 10,
                    ),
                    softWrap: true,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  // FormField...
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Country
                      DropdownButtonFormField(
                          isExpanded: true,
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 3.w),
                              prefix: Padding(
                                padding:
                                    EdgeInsets.only(top: 0.5.h, right: 5.w),
                                child: Image.asset(
                                  "assets/icon/ghana.png",
                                  width: 5.w,
                                ),
                              )),
                          items: const [
                            DropdownMenuItem(
                              value: 1,
                              child: Text("Ghana"),
                            ),
                            DropdownMenuItem(value: 2, child: Text("USA")),
                            DropdownMenuItem(value: 3, child: Text("Nigeria")),
                            DropdownMenuItem(
                                value: 4, child: Text("United Kingdom")),
                            DropdownMenuItem(
                                value: 5, child: Text("South Africa")),
                          ],
                          onChanged: (context) {}),
                      SizedBox(
                        height: 2.5.h,
                      ),
                      //Number Field
                      Text(
                        "Enter Your Phone Number",
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: const Color(0xFF08034E),
                          fontWeight: FontWeight.w800,
                          fontSize: 10,
                        ),
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      GestureDetector(
                          onTap: () {
                          setState(() {
                            _isTapped = !_isTapped;
                          });
                        },
                        child: TextFormField(
                           onTap: () {
                          setState(() {
                            _isTapped = !_isTapped;
                          });
                        },
                         keyboardType: const TextInputType.numberWithOptions(),
                          decoration: InputDecoration(
                            fillColor: _isTapped? Colors.blue.shade50 : theme.inputDecorationTheme.fillColor ,
                           hintText: '+2330985674',
                          ),
                        ),
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
                    child: Button(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const VerifyCode()));
                        },
                        borderRadius: 8,
                        color: const Color(0xFF08034E),
                        //  padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20.w),
                        buttonText: 'Continue'),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),

                  const Spacer(),
                  Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text(
                            "Please review our",
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: const Color(0xFF08034E),
                              fontWeight: FontWeight.w800,
                              fontSize: 10,
                            ),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Terms and condition policy",
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: theme.primaryColor,
                                ),
                              )),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}
