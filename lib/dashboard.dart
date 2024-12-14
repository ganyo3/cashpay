import 'package:cashpay/common/widgets/custom_buttons.dart';
import 'package:cashpay/operation/mycard.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'operation/Transfer/transfer.dart';
import 'operation/bankaccount.dart';

class Dashboard extends StatefulWidget {
  @override
  const Dashboard({super.key});

  @override
  State<StatefulWidget> createState() {
    return DashboardState();
  }
}

class DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        foregroundColor:  Colors.white,
        backgroundColor: const Color.fromARGB(255, 8, 3, 78),
        actions: [
          Image.asset(
            "assets/logo/logo1.png",
            width: 40,
          ),
          ],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      //callDrawer(context),
      drawer: callDrawer(context),
      body: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 8, 3, 78),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    "Active Total Balance",
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$8,420.00",
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: Colors.white,
                          fontSize: 30,
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
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 5.w),
                        buttonText: 'ADD +',
                      ),
                    ],
                  ),
                  Divider(
                    height: 4.h,
                    color: Colors.grey,
                  ),
                  Row(
                    children: [
                      Button(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const SignUp()));
                        },
                        borderRadius: 6,
                        color: Colors.white12,
                        fontSize: 20,
                        padding: EdgeInsets.symmetric(
                            vertical: 0.h, horizontal: 2.5.w),
                        buttonText: '↑',
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Expanded(
                          child: Text(
                        "Up by 4% from last month",
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.white,
                        ),
                      ))
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.w,
              vertical: 2.h,
            ),
            child: Text(
              "Operation",
              style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w800, color: Color(0xFF08034E)),
            ),
          ),
          //Operation
          SizedBox(
              height: 28.h,
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                crossAxisCount: 3,
                mainAxisSpacing: 2.h,
                crossAxisSpacing: 3.w,
                children: [
                  //Transfer Button
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Transfer()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 3.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                                height: 3.5.h,
                                image: AssetImage("assets/logo/swap.png")),
                            Text("Transfer",
                                style: theme.textTheme.bodySmall?.copyWith(
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFF08034E),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //Card Buttton
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyCard()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 3.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image(
                                height: 3.5.h,
                                image:
                                    AssetImage("assets/logo/credit-cards.png")),
                            Text("My Card",
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: Color(0xFF08034E),
                                  fontWeight: FontWeight.w800,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //Bank Button
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context)=>const BankAccount())
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 3.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.account_balance_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            Text("Bank",
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: Color(0xFF08034E),
                                  fontWeight: FontWeight.w800,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //Transfer
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 3.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              height: 3.5.h,
                              image: AssetImage("assets/logo/insert-card.png")),
                          Text("Transfer",
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: Color(0xFF08034E),
                                fontWeight: FontWeight.w800,
                              )),
                        ],
                      ),
                    ),
                  ),
                  //Balance
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 3.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              height: 3.5.h,
                              image: AssetImage("assets/logo/balance.png")),
                          Text("Budget",
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: Color(0xFF08034E),
                                fontWeight: FontWeight.w800,
                              )),
                        ],
                      ),
                    ),
                  ),
                  //Rate
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 3.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              height: 3.5.h,
                              image: AssetImage("assets/logo/business.png")),
                          Text("Analytics",
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: Color(0xFF08034E),
                                fontWeight: FontWeight.w800,
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
          //Profile Section
          SizedBox(
            height: 38.h,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Card(
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            width: 1.5.w, color: Colors.grey.shade200)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                        vertical: 2.h,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Complete Profile",
                                  style: theme.textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w800,
                                  )),
                              Text("Something",
                                  style: theme.textTheme.bodySmall?.copyWith(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.grey)),
                            ],
                          ),
                          SizedBox(
                            height: 1.5.h,
                          ),
                          LinearProgressIndicator(
                            color: const Color(0xFF298BDB),
                            backgroundColor: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10),
                            minHeight: 1.h,
                            value: 0.5,
                          ),
                          SizedBox(
                            height: 1.5.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.person,
                                color: theme.primaryColor,
                                size: 20,
                              ),
                              SizedBox(
                                width: 2.5.w,
                              ),
                              Text("Personal Information",
                                  style: theme.textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.w800,
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.w),
                            child: Text(
                                "When you signed up for an account, we collect personal information.",
                                style: theme.textTheme.bodySmall
                                    ?.copyWith(color: Colors.grey.shade800)),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

//Drawer
  Drawer callDrawer(BuildContext context) {
    var theme = Theme.of(context);
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: Image.asset(
              "assets/logo/logo1.png",
              width: 40,
            ),
            title: Text(
              "CashPay",
              style: theme.textTheme.labelMedium
                  ?.copyWith(fontSize: 15, color: Colors.white),
            ),
          ),
          Divider(
            indent: 5.w,
            endIndent: 5.w,
            thickness: .4,
            color: Colors.white,
          ),
          ListTile(
            leading: const Icon(
              Icons.info_outline,
              color: Colors.white,
              size: 20,
            ),
            title: Text(
              "About",
              style: theme.textTheme.bodySmall?.copyWith(color: Colors.white),
            ),
          ),
          Divider(
            indent: 5.w,
            endIndent: 5.w,
            color: Colors.white,
            thickness: .25,
          ),
          ListTile(
            leading: const Icon(
              Icons.logout_outlined,
              color: Color.fromARGB(193, 233, 56, 56),
              size: 20,
            ),
            title: Text(
              "Logout",
              style: theme.textTheme.bodySmall?.copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
