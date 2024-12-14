import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'common/widgets/custom_buttons.dart';

class Profile extends StatefulWidget {
  @override
  const Profile({super.key});

  @override
  State<StatefulWidget> createState() {
    return ProfileState();
  }
}

class ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
  var theme = Theme.of(context);
    return Scaffold(
     appBar: AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xFF08034E),
        // leading: callDrawer(context),
       title: Text("Detail",style: theme.textTheme.labelLarge?.copyWith(
        color: Colors.white
       ),),
      ),
       body: ListView(
        padding: EdgeInsets.only(bottom:2.h),
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF08034E),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 1.h,
                  ),
                  CircleAvatar(
                    radius: 10.w,
                    backgroundImage: const AssetImage("assets/images/profile-holder.jpg",),
                  ),
                  SizedBox(height:0.5.h),
                  Text(
                    "Dion Morgan",
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w800
                    ),
                  ),
                  Text(
                    "cashpay.me/username",
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w800
                    ),
                  ),
                Divider(
                    height: 4.h,
                    color: Colors.grey.shade300,
                  ),
                 ],
              ),
            ),
          ),
          SizedBox(height: 2.h,),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.w,
             ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Email",
                  style: theme.textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Button(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const SignUp()));
                        },
                        borderColor: Colors.grey.shade700,
                        borderRadius: 6,
                       fontSize: 10,
                        textColor: Colors.grey.shade700,
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 3.w),
                        buttonText: '+ ADD',
                      ),
              ],
            ),
          ),
          //Personal Info
        Container(
          padding: EdgeInsets.symmetric(vertical: 1.h),
          margin: EdgeInsets.symmetric(
            vertical: .8.h,
            horizontal: 8.w
          ),
          decoration: BoxDecoration(
            color:  Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Card(
                  child: Padding(
                    padding:EdgeInsets.symmetric(
                      horizontal: 2.5.w,
                     ),
                    child: Column(
                     children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Row(
                            children: [
                              const Icon(Icons.email_outlined,size: 15,),
                              SizedBox(width: 1.w,),
                          Text("username@gmail.com",
                          style: theme.textTheme.bodySmall?.copyWith(color: Colors.grey.shade700),
                          ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text("Edit",style: theme.textTheme.labelMedium?.copyWith(color: theme.primaryColor),)),
                        ],),
                     ],
                    ),
                  ),
                ),
        ),
          SizedBox(height: 2.h,),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.w,
             ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Phone Number",
                  style: theme.textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                 Button(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const SignUp()));
                        },
                        borderColor: Colors.grey.shade700,
                        borderRadius: 6,
                       fontSize: 10,
                        textColor: Colors.grey.shade700,
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 3.w),
                        buttonText: '+ ADD',
                      ),
              ],
            ),
          ),
          //Phone Numbers
        Container(
          padding: EdgeInsets.symmetric(vertical: 1.h),
          margin: EdgeInsets.symmetric(
            horizontal: 8.w,vertical: .8.h,
          ),
          decoration: BoxDecoration(
            color:  Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
              Card(
                      child: Padding(
                        padding:EdgeInsets.symmetric(
                          horizontal: 2.5.w,
                        ),
                        child: Column(
                         children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Row(
                                children: [
                                  const Icon(Icons.local_phone_outlined,size: 15,),
                                    SizedBox(width: 1.w,),
                              Text("+233****7867",
                              style: theme.textTheme.bodySmall,
                              ),
                                ],
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text("change",style: theme.textTheme.labelMedium?.copyWith(color:theme.primaryColor),)),
                            ],),
                         ],
                        ),
                      ),
                    ),
              Card(
                      child: Padding(
                        padding:EdgeInsets.symmetric(
                          horizontal: 2.5.w,
                        ),
                        child: Column(
                         children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Row(
                                children: [
                                  const Icon(Icons.local_phone_outlined,size: 15,),
                                    SizedBox(width: 1.w,),
                              Text("+233****9563",
                              style: theme.textTheme.bodySmall,
                              ),
                                ],
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text("change",style: theme.textTheme.labelMedium?.copyWith(color: theme.primaryColor),)),
                            ],),
                         ],
                        ),
                      ),
                    ),
            ],
          ),
        ),
          SizedBox(height: 2.h,),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.w,
             ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Address",
                  style: theme.textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                 Button(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const SignUp()));
                        },
                        borderColor: Colors.grey.shade700,
                        borderRadius: 6,
                       fontSize: 10,
                        textColor: Colors.grey.shade700,
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 3.w),
                        buttonText: '+ ADD',
                      ),
              ],
            ),
          ),
          //Phone Numbers
        Container(
          padding: EdgeInsets.symmetric(vertical: 1.h),
          margin: EdgeInsets.symmetric(
            horizontal: 8.w,
            vertical: .8.h,
          ),
          decoration: BoxDecoration(
            color:  Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
              Card(
                      child: Padding(
                        padding:EdgeInsets.symmetric(
                          horizontal: 2.5.w,
                        ),
                        child: Column(
                         children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: .5.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(Icons.home_outlined,size: 15,),
                                      SizedBox(width: 1.w,),
                                Column(
                                 crossAxisAlignment:CrossAxisAlignment.start,
                                 children: [
                                    Text("BLK56 PLT B",
                                    style: theme.textTheme.bodySmall,
                                    ),
                                Text("Bake-Bread Street",
                                style: theme.textTheme.bodySmall,
                                ),
                                Text("AR-0008-5434",
                                style: theme.textTheme.bodySmall,
                                ),
                                  ],
                                ),
                                  ],
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text("Edit",style:theme.textTheme.labelMedium?.copyWith(color: theme.primaryColor),)),
                              ],),
                            ),
                         ],
                        ),
                      ),
                    ),
            ],
          ),
        ),
          SizedBox(height: 2.h,),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.w,
             ),
            child: Text(
              "Account Options",
              style: theme.textTheme.labelMedium?.copyWith(
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          SizedBox(height: 1.h,),
          //Phone Numbers
        Container(
          padding: EdgeInsets.symmetric(vertical: 1.h),
          margin: EdgeInsets.symmetric(
            horizontal: 8.w
          ),
          decoration: BoxDecoration(
            color:  Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
              Padding(
                padding:EdgeInsets.symmetric(
                  horizontal: 8.w,
                ),
                child:  DropdownButtonFormField(
                   isExpanded: true,
                   decoration: InputDecoration(
                   fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(
                     horizontal: 3.w),
                  label: Text("Language",style: 
                  theme.textTheme.labelLarge),
                   ),
                   items: const [
                        DropdownMenuItem(value: 1, child: Text("English"),),
                        DropdownMenuItem(value: 2,child: Text("Twi")),
                        DropdownMenuItem(value: 3,child: Text("Housa")),
                        DropdownMenuItem(value: 4,child: Text("French")),
                        DropdownMenuItem(value: 5,child: Text("Japanese")),
                      ],
                      onChanged: (context) {}),
              ),
              SizedBox(height: 2.h,),
              Padding(
                padding:EdgeInsets.symmetric(
                  horizontal: 8.w,
                ),
                child:  DropdownButtonFormField(
                   isExpanded: true,
                   decoration: InputDecoration(
                     fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(
                     horizontal: 3.w),
                  label: Text("Account Purpose",style: 
                  theme.textTheme.labelLarge),
                   ),
                   items: const [
                        DropdownMenuItem(value: 1, child: Text("Savings"),),
                        DropdownMenuItem(value: 2,child: Text("Online Shopping")),
                        DropdownMenuItem(value: 3,child: Text("Investment")),
                         ],
                      onChanged: (context) {}),
              ),
            ],
          ),
        ),
        
        ],
      ),
    );
  }
}
