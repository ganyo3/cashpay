import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Confirm_Payment extends StatefulWidget {
  @override
  const Confirm_Payment({super.key});

  @override
  State<StatefulWidget> createState() {
    return Confirm_PaymentState();
  }
}

class Confirm_PaymentState extends State<Confirm_Payment> {
  @override
  Widget build(BuildContext context) {
  var theme = Theme.of(context);
    return Scaffold(
     appBar: AppBar(
      backgroundColor: const Color.fromARGB(255, 8, 3, 78),
      actions: [IconButton(onPressed: (){}, icon: Icon(Icons.share_rounded))],
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
                            "Money Paid",
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            "\$8,420.00",
                            style: theme.textTheme.bodyMedium?.copyWith(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      CircleAvatar(
                       backgroundColor:Colors.greenAccent,
                        child: Icon(Icons.check_rounded,size: 40,),
                      )
                    ],
                  ),
                  Divider(
                       color: Colors.grey,
                      ), 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Something is here", style: theme.textTheme.bodyMedium?.copyWith(
                            color: Colors.white,
                            ),),
                      ElevatedButton(
                        style: theme.elevatedButtonTheme.style?.copyWith(
                          padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 5.w, vertical: 0.h))
                        ),
                        onPressed: () {}, child: Text("Something")),
                    ],
                  ),  
                  SizedBox(height: 1.5.h,),                  
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
                    Text("Something is here", style: theme.textTheme.bodySmall?.copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  ),),
                  ],
                ),

                IconButton(onPressed: (){}, icon: Icon(Icons.add_box_rounded))
              ],
            ),
          ),      
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Someth", style: theme.textTheme.bodySmall),
                    Text("Something is here", style: theme.textTheme.bodySmall?.copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  ),),
                  ],
                ),

                IconButton(onPressed: (){}, icon: Icon(Icons.add_box_rounded))
              ],
            ),
          ),      
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 4.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Something is here but i don't know what", style: theme.textTheme.bodySmall),
                Text("Something is here too, i guess", style: theme.textTheme.bodySmall),
              ],
            ),
          ),    
          Divider( thickness: 2.w,
                       color: Colors.grey.shade200,
                      ),   
        ],
      ),
    );
  }
}
