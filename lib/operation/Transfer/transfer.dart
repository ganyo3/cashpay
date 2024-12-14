import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'sendmoney.dart';

class Transfer extends StatefulWidget {
  @override
  const Transfer({super.key});

  @override
  State<StatefulWidget> createState() {
    return TransferState();
  }
}

class TransferState extends State<Transfer> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
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
        title: Text(
          "Transfer",
          style: theme.textTheme.titleSmall?.copyWith(
              color: Color(0xFF08034E),
              fontSize: 15,
              fontWeight: FontWeight.w800),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 4.h),
        children: [
          Text(
            "Where\nto send",
            style: theme.textTheme.bodyLarge?.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Sendmoney()));
            },
            child: Card(
              color: const Color.fromARGB(255, 8, 3, 78),
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              margin: EdgeInsets.symmetric(horizontal: 0.w),
              child: Row(
                children: [
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.5.h),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: theme.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Image(
                        color: Colors.white,
                        height: 2.h,
                        image: AssetImage("assets/logo/swap.png")),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Transfer from Account",
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontSize: 9,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Wallet to Other",
                        style: theme.textTheme.bodySmall?.copyWith(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Sendmoney()));
            },
            child: Card(
              color: theme.primaryColor,
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(color: Color(0xFF08034E),width: 0.35.w),
              ),
              margin: EdgeInsets.zero,
              child: Row(
                children: [
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.5.h),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: const Icon(
                      Icons.account_balance_outlined,
                      // color: Colors.white,
                      size: 20,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Transfer from Account",
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontSize: 9,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Wallet to Bank",
                        style: theme.textTheme.bodySmall?.copyWith(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          //.................
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.h),
            child: Text(
              "Recent Transaction",
              style: theme.textTheme.bodyLarge
                  ?.copyWith(fontWeight: FontWeight.w800),
            ),
          ),
          SizedBox(
            height: 20.h,
            child: GridView.count(
              physics: AlwaysScrollableScrollPhysics(),
              crossAxisCount: 1,
              mainAxisSpacing: 5.w,
              childAspectRatio: 1.4,
              scrollDirection: Axis.horizontal,
              children: [
                Card(
                  color: const Color.fromARGB(255, 8, 3, 78),
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  margin: EdgeInsets.zero,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 2.h,
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
                      Text(
                        "SomethimgSomething",
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontSize: 9,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "****342532675",
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontSize: 9,
                          color: Colors.white,
                        ),
                      ),
                      Chip(
                          labelPadding: EdgeInsets.symmetric(horizontal: 3.w),
                          color: WidgetStatePropertyAll(theme.primaryColor),
                          label: Text("data"))
                    ],
                  ),
                ),
                Card(
                  color: theme.primaryColor,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  margin: EdgeInsets.zero,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 2.h,
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.5.w, vertical: 1.h),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 8, 3, 78),
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
                      Text(
                        "SomethimgSomething",
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontSize: 9,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "****342532675",
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontSize: 9,
                          color: Colors.white,
                        ),
                      ),
                      Chip(
                          labelPadding: EdgeInsets.symmetric(horizontal: 3.w),
                          color: WidgetStatePropertyAll(
                            const Color.fromARGB(255, 8, 3, 78),
                          ),
                          label: Text("data"))
                    ],
                  ),
                ),
                Card(
                  color: const Color.fromARGB(255, 8, 3, 78),
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  margin: EdgeInsets.zero,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 2.h,
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
                      Text(
                        "SomethimgSomething",
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontSize: 9,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "****342532675",
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontSize: 9,
                          color: Colors.white,
                        ),
                      ),
                      Chip(
                          labelPadding: EdgeInsets.symmetric(horizontal: 3.w),
                          color: WidgetStatePropertyAll(theme.primaryColor),
                          label: Text("data"))
                    ],
                  ),
                ),
                Card(
                  color: theme.primaryColor,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  margin: EdgeInsets.zero,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 2.h,
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.5.w, vertical: 1.h),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 8, 3, 78),
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
                      Text(
                        "SomethimgSomething",
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontSize: 9,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "****342532675",
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontSize: 9,
                          color: Colors.white,
                        ),
                      ),
                      Chip(
                          labelPadding: EdgeInsets.symmetric(horizontal: 3.w),
                          color: WidgetStatePropertyAll(
                            const Color.fromARGB(255, 8, 3, 78),
                          ),
                          label: Text("data"))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
