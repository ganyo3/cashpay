import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => ActivityState();
}

class ActivityState extends State<Activity> {
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
      length: 3,
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
              const Text('Activities')
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
              labelColor: theme.primaryColor,
              unselectedLabelColor: Colors.grey.shade700,
              unselectedLabelStyle: theme.textTheme.bodyMedium
                  ?.copyWith(fontWeight: FontWeight.w400, fontSize: 12),
              labelStyle: theme.textTheme.bodyMedium
                  ?.copyWith(fontWeight: FontWeight.bold, fontSize: 12),
              // indicator: ShapeDecoration(
              //     shape:LinearBorder.bottom(),
              //     ),
              tabs: [
                Tab(
                  child: const Text('Activity'),
                ),
                Tab(
                  child: const Text('Cash In'),
                ),
                Tab(
                  child: const Text(
                    'Tranferred',
                  ),
                ),
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
                    ListView(
                      children: [
                        Card(
                          child: Column(
                            children: [
                              ListTile(
                                leading:Chip(
                                  side: BorderSide.none,
                                  color:WidgetStatePropertyAll(Colors.blue.shade300),
                                  shape: CircleBorder(),
                                  label: Icon(Icons.arrow_downward_rounded)),
                                title: Text("-GHS500.00"),
                                trailing: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 2.w, vertical: 0.5.h),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.blue.shade300),
                                    width: 25.w,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.circle_outlined,
                                          size: 15,
                                        ),
                                        Text(
                                          "Incomplete",
                                          style: theme.textTheme.labelMedium,
                                        ),
                                      ],
                                    )),
                              ),
                              // Divider(
                              //   indent: 15.w,
                              //   endIndent: 6.w,
                              // ),
                              ExpansionTile(
                                expandedCrossAxisAlignment:
                                    CrossAxisAlignment.start,
                                tilePadding:
                                    EdgeInsets.symmetric(horizontal: 5.w),
                                title: Text("Payment for product",
                                    style:
                                        theme.textTheme.labelMedium?.copyWith(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 15,
                                    )),
                                children: [
                                  Text.rich(
                                    TextSpan(
                                        text: "Name :",
                                        style: theme.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold),
                                        children: [
                                          WidgetSpan(
                                              child: SizedBox(
                                            width: 2.w,
                                          )),
                                          TextSpan(
                                              text: 'Raihan Zuhilmin',
                                              style: theme.textTheme.labelMedium
                                                  ?.copyWith(
                                                      color:
                                                          theme.primaryColor))
                                        ]),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                        text: "Payment Method :",
                                        style: theme.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold),
                                        children: [
                                          WidgetSpan(
                                              child: SizedBox(
                                            width: 2.w,
                                          )),
                                          TextSpan(
                                              text: 'MTN MoMo ****253 6357',
                                              style: theme.textTheme.labelMedium
                                                  ?.copyWith(
                                                      color:
                                                          theme.primaryColor))
                                        ]),
                                  ),
                                
                                  Text.rich(
                                    TextSpan(
                                        text: "Date :",
                                        style: theme.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold),
                                        children: [
                                          WidgetSpan(
                                              child: SizedBox(
                                            width: 2.w,
                                          )),
                                          TextSpan(
                                              text: 'December 1st, 2024. 14:36 PM',
                                              style: theme.textTheme.labelMedium
                                                  ?.copyWith(
                                                      color:
                                                          theme.primaryColor))
                                        ]),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),

                         Card(
                          child: Column(
                            children: [
                              ListTile(
                                leading: Chip(
                                  side: BorderSide.none,
                                  color:WidgetStatePropertyAll(Colors.red.shade300),
                                  shape: CircleBorder(),
                                  label: Icon(Icons.arrow_upward_rounded)),
                                title: Text("-GHS200.00"),
                                trailing: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 2.w, vertical: 0.5.h),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.red.shade100),
                                    width: 16.w,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.close_outlined,
                                          color: Colors.red,
                                          size: 15,
                                        ),
                                        Text(
                                          "Failed",
                                          style: theme.textTheme.labelMedium?.copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                        ),
                                      ],
                                    )),
                              ),
                              // Divider(
                              //   indent: 15.w,
                              //   endIndent: 6.w,
                              // ),
                              ExpansionTile(
                                expandedCrossAxisAlignment:
                                    CrossAxisAlignment.start,
                                tilePadding:
                                    EdgeInsets.symmetric(horizontal: 5.w),
                                title: Text("Sending money",
                                    style:
                                        theme.textTheme.labelMedium?.copyWith(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 15,
                                    )),
                                children: [
                                  Text.rich(
                                    TextSpan(
                                        text: "Name :",
                                        style: theme.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold),
                                        children: [
                                          WidgetSpan(
                                              child: SizedBox(
                                            width: 2.w,
                                          )),
                                          TextSpan(
                                              text: 'Deon Legolas',
                                              style: theme.textTheme.labelMedium
                                                  ?.copyWith(
                                                      color:
                                                          theme.primaryColor))
                                        ]),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                        text: "Payment Method :",
                                        style: theme.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold),
                                        children: [
                                          WidgetSpan(
                                              child: SizedBox(
                                            width: 2.w,
                                          )),
                                          TextSpan(
                                              text: 'Credit Card ****256357',
                                              style: theme.textTheme.labelMedium
                                                  ?.copyWith(
                                                      color:
                                                          theme.primaryColor))
                                        ]),
                                  ),
                                
                                  Text.rich(
                                    TextSpan(
                                        text: "Date :",
                                        style: theme.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold),
                                        children: [
                                          WidgetSpan(
                                              child: SizedBox(
                                            width: 2.w,
                                          )),
                                          TextSpan(
                                              text: 'December 2nd, 2024. 10:25 AM',
                                              style: theme.textTheme.labelMedium
                                                  ?.copyWith(
                                                      color:
                                                          theme.primaryColor))
                                        ]),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),

                         Card(
                          child: Column(
                            children: [
                              ListTile(
                                leading:Chip(
                                  side: BorderSide.none,
                                  color:WidgetStatePropertyAll(Colors.green.shade300),
                                  shape: CircleBorder(),
                                  label: Icon(Icons.arrow_downward_rounded)),
                                title: Text("-GHS1000.00"),
                                trailing: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 2.w, vertical: 0.5.h),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.green.shade300),
                                    width: 22.w,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.check_outlined,
                                          size: 15,
                                        ),
                                        Text(
                                          "completed",
                                          style: theme.textTheme.labelMedium,
                                        ),
                                      ],
                                    )),
                              ),
                              // Divider(
                              //   indent: 15.w,
                              //   endIndent: 6.w,
                              // ),
                              ExpansionTile(
                                expandedCrossAxisAlignment:
                                    CrossAxisAlignment.start,
                                tilePadding:
                                    EdgeInsets.symmetric(horizontal: 5.w),
                                title: Text("Money Sent",
                                    style:
                                        theme.textTheme.labelMedium?.copyWith(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 15,
                                    )),
                                children: [
                                  Text.rich(
                                    TextSpan(
                                        text: "Name :",
                                        style: theme.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold),
                                        children: [
                                          WidgetSpan(
                                              child: SizedBox(
                                            width: 2.w,
                                          )),
                                          TextSpan(
                                              text: 'J.J. Jamison',
                                              style: theme.textTheme.labelMedium
                                                  ?.copyWith(
                                                      color:
                                                          theme.primaryColor))
                                        ]),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                        text: "Payment Method :",
                                        style: theme.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold),
                                        children: [
                                          WidgetSpan(
                                              child: SizedBox(
                                            width: 2.w,
                                          )),
                                          TextSpan(
                                              text: 'MTN MoMo ****253 6357',
                                              style: theme.textTheme.labelMedium
                                                  ?.copyWith(
                                                      color:
                                                          theme.primaryColor))
                                        ]),
                                  ),
                                
                                  Text.rich(
                                    TextSpan(
                                        text: "Date :",
                                        style: theme.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold),
                                        children: [
                                          WidgetSpan(
                                              child: SizedBox(
                                            width: 2.w,
                                          )),
                                          TextSpan(
                                              text: 'November 28th, 2024. 12:36 PM',
                                              style: theme.textTheme.labelMedium
                                                  ?.copyWith(
                                                      color:
                                                          theme.primaryColor))
                                        ]),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),

                    //Inbox
                    ListView(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5.w,
                              vertical: 2.h,
                            ),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text("05:45 PM",
                                      style:
                                          theme.textTheme.titleSmall?.copyWith(
                                        fontWeight: FontWeight.w800,
                                      )),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: CircleAvatar(
                                      backgroundColor: theme.primaryColor,
                                      radius: 5.w,
                                      child: Text(
                                        "LK",
                                        style: theme.textTheme.labelLarge
                                            ?.copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    )),
                                    Expanded(
                                      flex: 4,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Leah Konen",
                                              style: theme.textTheme.titleMedium
                                                  ?.copyWith(
                                                fontWeight: FontWeight.w700,
                                              )),
                                          Text("Received",
                                              style: theme.textTheme.bodySmall
                                                  ?.copyWith(
                                                      color: Colors
                                                          .grey.shade800)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(),
                        GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5.w,
                              vertical: 2.h,
                            ),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text("01:05 PM",
                                      style:
                                          theme.textTheme.titleSmall?.copyWith(
                                        fontWeight: FontWeight.w800,
                                      )),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: CircleAvatar(
                                      backgroundColor: theme.primaryColor,
                                      radius: 5.w,
                                      child: Text(
                                        "DG",
                                        style: theme.textTheme.labelLarge
                                            ?.copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    )),
                                    Expanded(
                                      flex: 4,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Devon Grove",
                                              style: theme.textTheme.titleMedium
                                                  ?.copyWith(
                                                fontWeight: FontWeight.w700,
                                              )),
                                          Text("Refunded",
                                              style: theme.textTheme.bodySmall
                                                  ?.copyWith(
                                                      color: Colors
                                                          .grey.shade800)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(),
                      ],
                    ),

                    //Cash transferred
                    ListView(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5.w,
                              vertical: 2.h,
                            ),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text("00:15 AM",
                                      style:
                                          theme.textTheme.titleSmall?.copyWith(
                                        fontWeight: FontWeight.w800,
                                      )),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: CircleAvatar(
                                      backgroundColor: theme.primaryColor,
                                      radius: 5.w,
                                      child: Text(
                                        "PP",
                                        style: theme.textTheme.labelLarge
                                            ?.copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    )),
                                    Expanded(
                                      flex: 4,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Petite Posy",
                                              style: theme.textTheme.titleMedium
                                                  ?.copyWith(
                                                fontWeight: FontWeight.w700,
                                              )),
                                          Text("Money Sent",
                                              style: theme.textTheme.bodySmall
                                                  ?.copyWith(
                                                      color: Colors
                                                          .grey.shade800)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(),
                        GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5.w,
                              vertical: 2.h,
                            ),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text("03:28AM",
                                      style:
                                          theme.textTheme.titleSmall?.copyWith(
                                        fontWeight: FontWeight.w800,
                                      )),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: CircleAvatar(
                                      backgroundColor: theme.primaryColor,
                                      radius: 5.w,
                                      child: Text(
                                        "IW",
                                        style: theme.textTheme.labelLarge
                                            ?.copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    )),
                                    Expanded(
                                      flex: 4,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("IllumiBowl",
                                              style: theme.textTheme.titleMedium
                                                  ?.copyWith(
                                                fontWeight: FontWeight.w700,
                                              )),
                                          Text("Purchased",
                                              style: theme.textTheme.bodySmall
                                                  ?.copyWith(
                                                      color: Colors
                                                          .grey.shade800)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(),
                      ],
                    ),
                  ]),
            ),
          ],
        ),
      )),
    );
  }
}
