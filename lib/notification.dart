import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => NotificationPageState();
}

class NotificationPageState extends State<NotificationPage> {
  String formatDate(DateTime date) {
    return DateFormat('MMMM dd yyyy').format(date);
  }

  bool showSearch = false;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    DateTime today = DateTime.now();
    DateTime yesterday = today.subtract(const Duration(days: 1));
    DateTime lastWeek = today.subtract(const Duration(days: 7));

    return DefaultTabController(
      length: 2,
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Container(
                padding: EdgeInsets.all(5.w),
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    // color: AppColors().primary,
                    image: DecorationImage(
                        image: AssetImage("assets/logo/cash.png"))),
              ),
              SizedBox(
                width: 1.5.w,
              ),
              const Text('Notifications')
            ],
          ),
          actions: [
            IconButton.outlined(
              onPressed: () {
                setState(() {
                  showSearch = !showSearch;
                });
              },
              icon: const Icon(
                Icons.search,
              ),
            ),
            SizedBox(
              width: 2.5.w,
            ),
          ],
          bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 0),
              indicatorPadding:
                  EdgeInsets.symmetric(vertical: .7.h, horizontal: .8.w),
              labelPadding: EdgeInsets.zero,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey.shade700,
              unselectedLabelStyle: theme.textTheme.bodyMedium
                  ?.copyWith(fontWeight: FontWeight.w400, fontSize: 12),
              labelStyle: theme.textTheme.bodyMedium
                  ?.copyWith(fontWeight: FontWeight.bold, fontSize: 12),
              indicator: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: theme.primaryColor),
              tabs: [
                Tab(
                  child: Container(
                    // width: 30.w,
                    height: 4.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 3.w,
                    ),
                    margin: EdgeInsets.symmetric(
                      horizontal: 1.w,
                    ),
                    alignment: Alignment.center,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(
                                color: theme.primaryColor.withOpacity(.5),
                                width: 1.2))),
                    child: const Text('Notifications (2)'),
                  ),
                ),
                Tab(
                  child: Container(
                    // width: 30.w,
                    height: 4.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 3.w,
                    ),
                    margin: EdgeInsets.symmetric(
                      horizontal: 1.w,
                    ),
                    alignment: Alignment.center,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(
                                color: theme.primaryColor.withOpacity(.5),
                                width: 1.2))),
                    child: const Text('Inbox (1)'),
                  ),
                ),
                // Tab(
                //   child: Container(
                //     width: 30.w,
                //     height: 4.h,
                //     padding: EdgeInsets.symmetric(
                //       horizontal: 4.w,
                //     ),
                //     alignment: Alignment.center,
                //     decoration: ShapeDecoration(
                //         shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(8),
                //             side: BorderSide(
                //                 color: theme.primaryColor.withOpacity(.5),
                //                 width: 1.2))),
                //     child: const Text(
                //       'Cancelled',
                //     ),
                // ),
                // ),
              ]),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 1.h,
            ),
            Visibility(
              visible: showSearch,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 2.5.w,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: SearchBar(
                            shape: WidgetStatePropertyAll(
                                ContinuousRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                            constraints: BoxConstraints.tightFor(height: 5.5.h),
                            trailing: [
                              Icon(
                                Icons.search,
                                color: Colors.grey.shade400,
                                size: 20,
                              )
                            ],
                            hintText: "Search",
                          ),
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
            Expanded(
              child: TabBarView(
                  //Notifications
                  children: [
                    ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 0.5.h),
                            height: 15.h,
                            color: Colors.grey.shade300,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 5.w,
                                vertical: 2.h,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("CashPay",
                                          style: theme.textTheme.titleSmall
                                              ?.copyWith(
                                            fontWeight: FontWeight.w800,
                                          )),
                                      Text("03:15pm",style:theme.textTheme.labelMedium,),
                                    ],
                                  ),
                                  Divider(),
                                  Row(
                                    children: [
                                      Container(
                                        width: 15.w,
                                        height: 6.h,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                          image: AssetImage(
                                              "assets/logo/cash.png"),
                                          fit: BoxFit.fill,
                                        )),
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Account",
                                                style: theme
                                                    .textTheme.titleLarge
                                                    ?.copyWith(
                                                  fontWeight: FontWeight.w800,
                                                )),
                                            Text(
                                                "When you signed up for an account, we collect personal information.",
                                                style: theme.textTheme.bodySmall
                                                    ?.copyWith(
                                                        color: Colors
                                                            .grey.shade700)),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),

                    //Inbox
                    ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 0.5.h),
                            height: 15.h,
                            color: Colors.grey.shade300,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 5.w,
                                vertical: 2.h,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Viewed",
                                          style: theme.textTheme.titleSmall
                                              ?.copyWith(
                                            fontWeight: FontWeight.w800,
                                          )),
                                       Text("Dec 1", style: theme.textTheme.titleSmall
                                              ?.copyWith(
                                            fontWeight: FontWeight.w800,
                                          )),
                                    ],
                                  ),
                                  Divider(),
                                  Row(
                                    children: [
                                      // Container(
                                      //   width: 15.w,
                                      //   height: 6.h,
                                      //   decoration: BoxDecoration(
                                      //       image: DecorationImage(
                                      //     image: AssetImage(
                                      //         "assets/logo/cash.png"),
                                      //     fit: BoxFit.fill,
                                      //   )),
                                      // ),
                                      Expanded(
                                        child: CircleAvatar(
                                          backgroundColor: theme.primaryColor,
                                          radius: 8.w,
                                          child:Text("T",style:theme.textTheme.labelLarge?.copyWith(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),textAlign: TextAlign.center,),
                                        )
                                      ),
                                      Expanded(
                                        flex:4,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Transaction",
                                                style: theme
                                                    .textTheme.titleLarge
                                                    ?.copyWith(
                                                  fontWeight: FontWeight.w700,
                                                )),
                                            Text(
                                                "Your cashpay account has been debited GHS500.00.",
                                                style: theme.textTheme.bodySmall
                                                    ?.copyWith(
                                                        color: Colors
                                                            .grey.shade800)),
                                            Text("Type: CashPay to Wallet; MoMo Transfer",
                                                style: theme.textTheme.bodySmall
                                                    ?.copyWith(
                                                        color: Colors
                                                            .grey.shade800)),
                                            Text("Balance: GHS2500.76",
                                                style: theme.textTheme.bodySmall
                                                    ?.copyWith(
                                                        color: Colors
                                                            .grey.shade700)),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ]),
            ),
          ],
        ),
      )),
    );
  }
}
