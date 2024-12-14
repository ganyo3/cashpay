import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../common/widgets/custom_buttons.dart';

class Payment extends StatefulWidget {
  @override
  const Payment({super.key});

  @override
  State<StatefulWidget> createState() {
    return PaymentState();
  }
}

class PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 3, 78),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              size: 15,
              color: Colors.white,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share_rounded,
                color: Colors.white,
              ))
        ],
      ),
      body: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 8, 3, 78),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            "MONEY PAID",
                            style: theme.textTheme.labelMedium?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "\$8,420.00",
                            style: theme.textTheme.bodyMedium?.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 5.w,
                        child: Icon(
                          Icons.check_rounded,
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  SizedBox(height:0.5.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Something is here",
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Button(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const SignUp()));
                        },
                        borderRadius: 6,
                        color: Colors.white12,
                        fontSize: 12,
                        padding: EdgeInsets.symmetric(
                            vertical: .5.h, horizontal: 4.w),
                        buttonText: 'Something',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Something", style: theme.textTheme.bodySmall),
                    Text(
                      "CashPay Wallet",
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontSize: 15,
                        color: const Color.fromARGB(255, 8, 3, 78),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                IconButton(
                    style: theme.iconButtonTheme.style?.copyWith(
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.grey.shade100),
                    ),
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_box_rounded,
                      size: 18,
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 5.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Some", style: theme.textTheme.bodySmall),
                    Text(
                      "Dr. Dion Kraven ",
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontSize: 15,
                        color: const Color.fromARGB(255, 8, 3, 78),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                IconButton(
                    style: theme.iconButtonTheme.style?.copyWith(
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.grey.shade200),
                    ),
                    onPressed: () {},
                    icon: Icon(
                      Icons.credit_card,
                      size: 18,
                    ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 4.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  color: Colors.grey.shade500,
                  endIndent: 70.w,
                ),
                Text("Something is here but i don't know what",
                    style: theme.textTheme.bodySmall),
                Text("Something is here too, i guess",
                    style: theme.textTheme.bodySmall),
              ],
            ),
          ),
          Divider(
            thickness: 2.5.w,
            color: Colors.grey.shade200,
          ),
          SizedBox(
            height: 2.h,
          ),
          ListTile(
            leading: Icon(
              Icons.info_outlined,size: 18,
              color: theme.primaryColor,
            ),
            title: Text("Need Help?", style: theme.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF08034E),
                )),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 12,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.save_alt_outlined,size: 18,
              color: theme.primaryColor,
            ),
            title: Text("Download Invoice",
                style: theme.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF08034E),
                )),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 12,
            ),
          ),
        ],
      ),
    );
  }
}
