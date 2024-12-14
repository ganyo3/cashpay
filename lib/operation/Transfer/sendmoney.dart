import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../common/widgets/custom_buttons.dart';
import 'payment.dart';

class Sendmoney extends StatefulWidget {
  @override
  const Sendmoney({super.key});

  @override
  State<StatefulWidget> createState() {
    return SendmoneyState();
  }
}

class SendmoneyState extends State<Sendmoney> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
         automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              size: 15,
              color: Color(0xFF08034E),
            )),
        title: Text("Send Money", style: theme.textTheme.titleSmall?.copyWith(
              color: Color(0xFF08034E),
              fontSize: 15,
              fontWeight: FontWeight.w800),),
        
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 4.h),
        children: [
          SizedBox(
            height: 4.h,
          ),
          TextFormField(
            keyboardType: TextInputType.numberWithOptions(),
              decoration:
                  InputDecoration(
                   filled: false,
                   border: UnderlineInputBorder(),
                   focusedBorder: UnderlineInputBorder(),
                      hintStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:  const Color(0xFF08034E)),
                    hintText: '\$2,420.00',
                    suffixIcon:  Icon(
                             Icons.expand_more_rounded,
                             color: const Color(0xFF08034E),
                           ),
                   )
                      .applyDefaults(theme.inputDecorationTheme),
                      ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text(
          //       "\$2,420.00",
          //       style: theme.textTheme.labelLarge?.copyWith(
          //         fontSize: 25,
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //     Row(
          //       children: [
          //         IconButton(
          //             onPressed: () {},
          //             icon: Icon(
          //               Icons.add_box,
          //               color: const Color(0xFF08034E),
          //             )),
          //         Icon(
          //           Icons.add,
          //           color: const Color(0xFF08034E),
          //         )
          //       ],
          //     ),
          //   ],
          // ),
         //......................
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h),
            child: Text(
              "Recent Money Sent",
              style: theme.textTheme.labelMedium?.copyWith(
                fontSize: 15,color:  const Color(0xFF08034E),
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          SizedBox(
            height: 50.h,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Card(
                    color: Colors.grey.shade50,
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    margin:
                        EdgeInsets.symmetric(vertical: 0.5.h, horizontal: 0.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                vertical: 1.5.h,
                                horizontal: 4.w,
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 2.5.w, vertical: 1.h),
                              decoration: BoxDecoration(
                                color: theme.primaryColor,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                              ), //Ⅾ
                              child: Column(
                                children: [
                                  Image(
                                      color: Colors.white,
                                      height: 3.h,
                                      image: AssetImage("assets/logo/d.png")),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "David Saah",
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    fontSize: 10,
                                     fontWeight: FontWeight.w800
                                  ),
                                ),
                                Text(
                                  "****56465676",
                                  style: theme.textTheme.bodySmall?.copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w800),
                                )
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child:Button(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const SignUp()));
                        },
                      borderRadius: 6,
                     borderColor: const Color(0xFF08034E),
                      fontSize: 9,
                      textColor: Colors.blue,
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 5.w),
                        buttonText: 'Send',
                      ),
                          //  Chip(
                          //     color: WidgetStatePropertyAll(Colors.white),
                          //     side: BorderSide(color: Colors.grey.shade500),
                          //     padding: EdgeInsets.symmetric(horizontal: 5.w),
                          //     label: Text(
                          //       "Send",
                          //       style: theme.textTheme.labelMedium
                          //           ?.copyWith(color: Colors.black),
                          //     )),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Button(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const Payment()));
              },
              borderRadius: 8,
              color: const Color(0xFF08034E),
              //  padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20.w),
              buttonText: 'Send Money'),
        ],
      ),
    );
  }
}
