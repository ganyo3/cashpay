import 'package:flutter/material.dart';
import 'package:cashpay/common/widgets/custom_buttons.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyCard extends StatefulWidget {
  @override
  const MyCard({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyCardState();
  }
}

class MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Card"),
        ),
        resizeToAvoidBottomInset: true,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          children: [
            GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              behavior: HitTestBehavior.translucent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 2.5.h,
                  ),
                  Container(
                    height: 20.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/card.png"),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    "Add New Card",
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  // FormField...
                  TextFormField(
                      decoration: const InputDecoration(
                              hintText: 'Enter card number')
                          .applyDefaults(theme.inputDecorationTheme)),
                  SizedBox(
                    height: 2.h,
                  ),
                  // Password
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter card name',
                    ).applyDefaults(theme.inputDecorationTheme),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  // Password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                            decoration: const InputDecoration(
                                    hintText: 'Expire date')
                                .applyDefaults(theme.inputDecorationTheme)),
                      ),
                      SizedBox(width: 2.5.w,),
                      Expanded(
                        child: TextFormField(
                            decoration: const InputDecoration(
                                    hintText: 'CCV')
                                .applyDefaults(theme.inputDecorationTheme)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  //Submit Button
                  Button(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const HomePage()));
                      },
                      borderRadius: 8,
                      color: const Color.fromARGB(255, 8, 3, 78),
                      //  padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20.w),
                      buttonText: 'Add Card'),
                ],
              ),
            ),
          ],
        ));
  }
}

//..........................................
