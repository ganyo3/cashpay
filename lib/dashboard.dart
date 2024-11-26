import 'package:cashpay/operation/mycard.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
        backgroundColor: const Color.fromARGB(255, 8, 3, 78),
        // leading: callDrawer(context),
        actions: [
          Image.asset("assets/logo/logo1.png"),
        ],
      ),
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
                    style: theme.textTheme.bodyMedium?.copyWith(
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
                          fontSize: 25,
                        ),
                      ),
                      ElevatedButton(onPressed: () {}, child: const Text("ADD +"))
                    ],
                  ),
                  Divider(
                    height: 4.h,
                    color: Colors.grey,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          style: theme.elevatedButtonTheme.style?.copyWith(
                            minimumSize:
                                const WidgetStatePropertyAll(Size(0, 40)),
                            maximumSize:
                                const WidgetStatePropertyAll(Size(40, 45)),
                            padding: WidgetStatePropertyAll(
                                EdgeInsets.symmetric(horizontal: 2.w)),
                          ),
                          onPressed: () {},
                          child: const Icon(Icons.arrow_upward_rounded)),
                      Expanded(
                          child: Text(
                        "Up by 4% from last month",
                        style: theme.textTheme.bodyMedium
                            ?.copyWith(color: Colors.white, fontSize: 13),
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
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.w,
              vertical: 2.h,
            ),
            child: Text(
              "Operation",
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w800,
              ),
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
                crossAxisSpacing: 2.w,
                children: [
                  //Transfer Button
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 3.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.swap_horiz_outlined,
                            color: Colors.black,
                            size: 30,
                          ),
                          Text("Transfer", style: theme.textTheme.titleSmall),
                        ],
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
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 3.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.credit_card_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            Text("My Card", style: theme.textTheme.titleSmall),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //Bank Button
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
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
                          Text("Bank", style: theme.textTheme.titleSmall),
                        ],
                      ),
                    ),
                  ),
                  //Transfer
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 3.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.print,
                            color: Colors.black,
                            size: 30,
                          ),
                          Text("Transfer", style: theme.textTheme.titleSmall),
                        ],
                      ),
                    ),
                  ),
                  //Balance
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 3.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.balance_outlined,
                            color: Colors.black,
                            size: 30,
                          ),
                          Text("Budget", style: theme.textTheme.titleSmall),
                        ],
                      ),
                    ),
                  ),
                  //Rate
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 3.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.bar_chart,
                            color: Colors.black,
                            size: 30,
                          ),
                          Text("Analytics", style: theme.textTheme.titleSmall),
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
                              const Text("Something"),
                            ],
                          ),
                          SizedBox(
                            height: 1.5.h,
                          ),
                          LinearProgressIndicator(
                            color: theme.primaryColor,
                            backgroundColor: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                            minHeight: 1.h,
                            value: 0.7,
                          ),
                          SizedBox(
                            height: 1.5.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.account_circle,
                                color: theme.primaryColor,
                              ),
                              Text("Personal Inforation",
                                  style: theme.textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.w800,
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6.w),
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
      backgroundColor: const Color.fromARGB(255, 8, 3, 78),
      child: ListView(
        children: [
          ListTile(
            leading: Image.asset("assets/logo/logo1.png"),
            title: Text(
              "CashPay",
              style: theme.textTheme.labelLarge
                  ?.copyWith(fontSize: 25, color: Colors.white),
            ),
          ),
          Divider(
            indent: 5.w,
            endIndent: 5.w,
            color: Colors.white,
          ),
          ListTile(
            leading: const Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
            title: Text(
              "About",
              style: theme.textTheme.labelLarge?.copyWith(color: Colors.white),
            ),
          ),
          Divider(
            indent: 5.w,
            endIndent: 5.w,
            color: Colors.white,
          ),
          ListTile(
            leading: const Icon(
              Icons.logout_outlined,
              color: Color.fromARGB(193, 233, 56, 56),
            ),
            title: Text(
              "Logout",
              style: theme.textTheme.labelLarge?.copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
