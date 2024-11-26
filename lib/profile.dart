import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
      backgroundColor: const Color.fromARGB(255, 8, 3, 78),
        // leading: callDrawer(context),
       title: const Text("Detail"),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 2.h,
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
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    "cashpay.me/username",
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                Divider(
                    height: 4.h,
                    color: Colors.grey,
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
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                ElevatedButton(
                  style: theme.elevatedButtonTheme.style?.copyWith(
                    shape: WidgetStatePropertyAll(ContinuousRectangleBorder(borderRadius: BorderRadius.circular(30))),
                    side: const WidgetStatePropertyAll(BorderSide(color: Colors.grey)),
                    backgroundColor:const WidgetStatePropertyAll(Colors.white),
                    padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 2.w))
                  ),
                  onPressed: (){}, 
                  child:Text("+ Add",style: theme.textTheme.labelMedium?.copyWith(color: Colors.black),))
              ],
            ),
          ),
          //Personal Info
        Container(
          padding: EdgeInsets.symmetric(vertical: 1.h),
          margin: EdgeInsets.symmetric(
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
                              const Icon(Icons.email_outlined,),
                              SizedBox(width: 1.w,),
                          Text("username@gmail.com",
                          style: theme.textTheme.labelMedium,
                          ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text("Edit")),
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
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                ElevatedButton(
                  style: theme.elevatedButtonTheme.style?.copyWith(
                    shape: WidgetStatePropertyAll(ContinuousRectangleBorder(borderRadius: BorderRadius.circular(30))),
                    side: const WidgetStatePropertyAll(BorderSide(color: Colors.grey)),
                    backgroundColor:const WidgetStatePropertyAll(Colors.white),
                    padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 2.w))
                  ),
                  onPressed: (){}, 
                  child:Text("+ Add",style: theme.textTheme.labelMedium?.copyWith(color: Colors.black),))
              ],
            ),
          ),
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
                                  const Icon(Icons.local_phone_outlined,),
                                    SizedBox(width: 1.w,),
                              Text("+233****7867",
                              style: theme.textTheme.labelMedium,
                              ),
                                ],
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text("change")),
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
                                  const Icon(Icons.local_phone_outlined,),
                                    SizedBox(width: 1.w,),
                              Text("+233****9563",
                              style: theme.textTheme.labelMedium,
                              ),
                                ],
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text("change")),
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
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                ElevatedButton(
                  style: theme.elevatedButtonTheme.style?.copyWith(
                    shape: WidgetStatePropertyAll(ContinuousRectangleBorder(borderRadius: BorderRadius.circular(30))),
                    side: const WidgetStatePropertyAll(BorderSide(color: Colors.grey)),
                    backgroundColor:const WidgetStatePropertyAll(Colors.white),
                    padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 2.w))
                  ),
                  onPressed: (){}, 
                  child:Text("+ Add",style: theme.textTheme.labelMedium?.copyWith(color: Colors.black),))
              ],
            ),
          ),
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
                                    const Icon(Icons.home_outlined,),
                                      SizedBox(width: 1.w,),
                                Column(
                                 crossAxisAlignment:CrossAxisAlignment.start,
                                 children: [
                                    Text("BLK56 PLT B",
                                    style: theme.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w800),
                                    ),
                                Text("Bake-Bread Street",
                                style: theme.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w800),
                                ),
                                Text("AR-0008-5434",
                                style: theme.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w800),
                                ),
                                  ],
                                ),
                                  ],
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text("Edit")),
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
              style: theme.textTheme.titleLarge?.copyWith(
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
              Card(
                      child: Padding(
                        padding:EdgeInsets.symmetric(
                          horizontal: 2.5.w,
                        ),
                        child:  DropdownButtonFormField(
                           isExpanded: true,
                           decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                             horizontal: 3.w),
                          label: Text("Language",style: 
                          theme.textTheme.labelLarge?.copyWith(fontSize: 15),),
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
                    ),
              Card(
                      child: Padding(
                        padding:EdgeInsets.symmetric(
                          horizontal: 2.5.w,
                        ),
                        child:  DropdownButtonFormField(
                           isExpanded: true,
                           decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                             horizontal: 3.w),
                          label: Text("Account Purpose",style: 
                          theme.textTheme.labelLarge?.copyWith(fontSize: 15),),
                           ),
                           items: const [
                                DropdownMenuItem(value: 1, child: Text("Savings"),),
                                DropdownMenuItem(value: 2,child: Text("Online Shopping")),
                                DropdownMenuItem(value: 3,child: Text("Investment")),
                                 ],
                              onChanged: (context) {}),
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
