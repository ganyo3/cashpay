import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BankAccount extends StatefulWidget {
  @override
  const BankAccount({super.key});

  @override
  State<StatefulWidget> createState() {
    return BankAccountState();
  }
}

class BankAccountState extends State<BankAccount> {
   bool _citiBankEnabled = true;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
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
            title: Text("Bank Account",style: theme.textTheme.titleSmall?.copyWith(
              color: Color(0xFF08034E),
              fontSize: 15,
              fontWeight: FontWeight.w800),),
       ),
      body: ListView(
        // padding: EdgeInsets.symmetric(vertical: 2.5.h),
        children: [
         Container(
           color: Colors.white,
           child: Padding(
             padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 2.5.h),
             child: Row(
               children: [
                          IconButton(
               onPressed: (){}, 
                          icon: Icon(Icons.person,color:  Color(0xFF08034E),),
                           style: theme.iconButtonTheme.style?.copyWith(
                       backgroundColor:
                           WidgetStatePropertyAll(Colors.grey.shade200),
                     ),
                          ),
                          SizedBox(width: 5.w,),
                          Text("Link New Account",style: theme.textTheme.labelMedium?.copyWith(
                           //  color: Color(0xFF08034E),
               fontSize: 15,
               fontWeight: FontWeight.w700),),
                      ],
                    ),
           ),
         ),
         SizedBox(height: 2.h,),
         Padding(
           padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
           child: Column(
            children: [
               Align(
                 alignment: Alignment.topLeft,
                 child: Text("Bank account",style: theme.textTheme.labelMedium?.copyWith(
                   fontWeight: FontWeight.w800,
                   fontSize: 15,
                 ),),
               ),
                   SizedBox(height: 2.h,),
               Card(
               margin: EdgeInsets.zero,
                 color: Colors.white,
                 child: Padding(
                   padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 1.5.h),
                   child: Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                           height: 4.h,width: 10.w,
                           decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                           image: DecorationImage(image: AssetImage("assets/logo/citibank.jpg"),fit: BoxFit.fill)
                           ),
                         ),
                         SizedBox(width: 2.5.w,),
                         Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Citibank",style: theme.textTheme.labelMedium?.copyWith(
                                                 fontWeight: FontWeight.w800,
                                                 fontSize: 15,
                               ),),
                               SizedBox(height: 0.5.h,),
                               Text("Creating - \$300",style: theme.textTheme.bodySmall?.copyWith(
                                 fontSize: 10,
                               ),)
                             ],
                           ),
                         ),
                           IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz,size: 18,color: Colors.black,)),
                       ],),
                     Divider(
                       color: Colors.grey.withOpacity(0.5),
                      ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Account Balance",style: theme.textTheme.bodySmall?.copyWith(
                               fontSize: 10,
                             ),),
                             Text("\$8,420.00",style: theme.textTheme.labelMedium?.copyWith(
                   fontWeight: FontWeight.w800,
                   fontSize: 15,
                                 ),)
                           ],
                         ),
                          Transform.scale(
                    scale:0.6,
                   child:  Switch(
                          activeColor: theme.primaryColor,
                          thumbColor:WidgetStatePropertyAll(Colors.white) ,
                          inactiveTrackColor: theme.indicatorColor,
                          value: _citiBankEnabled,
                   onChanged:(value) {
                     setState(() {
                       _citiBankEnabled = value;
                     });
                   },),),
                       ],
                     ),
                //    Transform.scale(
                //     scale:0.7,
                //    child: SwitchListTile(
                //      contentPadding: EdgeInsets.zero,
                //       inactiveTrackColor: theme.indicatorColor,
                //   inactiveThumbColor: Colors.white,
                  
                //    title:   Column(
                //            crossAxisAlignment: CrossAxisAlignment.start,
                //            children: [
                //              Text("Account Balance",style: theme.textTheme.bodySmall?.copyWith(
                //                fontSize: 10,
                //              ),),
                //              Text("\$8,420.00",style: theme.textTheme.labelMedium?.copyWith(
                //    fontWeight: FontWeight.w800,
                //    fontSize: 15,
                //                  ),)
                //            ],
                //          ),
                //    value:_citiBankEnabled,
                //    onChanged:(value) {
                //      setState(() {
                //        _citiBankEnabled = value;
                //      });
                //    },
                //  ),),
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 2.h,),
               Card(
               margin: EdgeInsets.zero,
                 color: Colors.white,
                 child: Padding(
                   padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 1.5.h),
                   child: Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                           height: 4.h,width: 10.w,
                           decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                           image: DecorationImage(image: AssetImage("assets/logo/HDF.jpg"),fit: BoxFit.fill)
                           ),
                         ),
                         SizedBox(width: 2.5.w,),
                         Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Citibank",style: theme.textTheme.labelMedium?.copyWith(
                                                 fontWeight: FontWeight.w800,
                                                 fontSize: 15,
                               ),),
                               SizedBox(height: 0.5.h,),
                               Text("Creating - \$300",style: theme.textTheme.bodySmall?.copyWith(
                                 fontSize: 10,
                               ),)
                             ],
                           ),
                         ),
                           IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz,size: 18,color: Colors.black,)),
                       ],),
                     Divider(
                       color: Colors.grey.withOpacity(0.5),
                      ),
                   Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Account Balance",style: theme.textTheme.bodySmall?.copyWith(
                               fontSize: 10,
                             ),),
                             Text("\$8,420.00",style: theme.textTheme.labelMedium?.copyWith(
                   fontWeight: FontWeight.w800,
                   fontSize: 15,
                                 ),)
                           ],
                         ),
                          Transform.scale(
                    scale:0.6,
                   child:  Switch(
                          activeColor: theme.primaryColor,
                          thumbColor:WidgetStatePropertyAll(Colors.white) ,
                          inactiveTrackColor: theme.indicatorColor,
                          value: _citiBankEnabled,
                   onChanged:(value) {
                     setState(() {
                       _citiBankEnabled = value;
                     });
                   },),),
                       ],
                     ),
                //    SwitchListTile(
                //      contentPadding: EdgeInsets.zero,
                //       inactiveTrackColor: theme.indicatorColor,
                //   inactiveThumbColor: Colors.white,
                  
                //    title:   Column(
                //            crossAxisAlignment: CrossAxisAlignment.start,
                //            children: [
                //              Text("Account Balance",style: theme.textTheme.bodySmall?.copyWith(
                //                fontSize: 10,
                //              ),),
                //              Text("\$8,420.00",style: theme.textTheme.labelMedium?.copyWith(
                //    fontWeight: FontWeight.w800,
                //    fontSize: 15,
                //                  ),)
                //            ],
                //          ),
                //    value:_citiBankEnabled,
                //    onChanged:(value) {
                //      setState(() {
                //        _citiBankEnabled = value;
                //      });
                //    },
                //  ),
                     ],
                   ),
                 ),
               ),
                SizedBox(height: 2.h,),
               Card(
               margin: EdgeInsets.zero,
                 color: Colors.white,
                 child: Padding(
                   padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 1.5.h),
                   child: Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                           height: 4.h,width: 10.w,
                           decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                           image: DecorationImage(image: AssetImage("assets/logo/citibank.jpg"),fit: BoxFit.fill)
                           ),
                         ),
                         SizedBox(width: 2.5.w,),
                         Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Hdcfbank",style: theme.textTheme.labelMedium?.copyWith(
                                                 fontWeight: FontWeight.w800,
                                                 fontSize: 15,
                               ),),
                               SizedBox(height: 0.5.h,),
                               Text("Creating - \$300",style: theme.textTheme.bodySmall?.copyWith(
                                 fontSize: 10,
                               ),)
                             ],
                           ),
                         ),
                           IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz,size: 18,color: Colors.black,)),
                       ],),
                     Divider(
                       color: Colors.grey.withOpacity(0.5),
                      ),
                   Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Account Balance",style: theme.textTheme.bodySmall?.copyWith(
                               fontSize: 10,
                             ),),
                             Text("\$8,420.00",style: theme.textTheme.labelMedium?.copyWith(
                   fontWeight: FontWeight.w800,
                   fontSize: 15,
                                 ),)
                           ],
                         ),
                          Transform.scale(
                    scale:0.6,
                   child:  Switch(
                          activeColor: theme.primaryColor,
                          thumbColor:WidgetStatePropertyAll(Colors.white) ,
                          inactiveTrackColor: theme.indicatorColor,
                          value: _citiBankEnabled,
                   onChanged:(value) {
                     setState(() {
                       _citiBankEnabled = value;
                     });
                   },),),
                       ],
                     ),
                //    SwitchListTile(
                //      contentPadding: EdgeInsets.zero,
                //       inactiveTrackColor: theme.indicatorColor,
                //   inactiveThumbColor: Colors.white,
                  
                //    title:   Column(
                //            crossAxisAlignment: CrossAxisAlignment.start,
                //            children: [
                //              Text("Account Balance",style: theme.textTheme.bodySmall?.copyWith(
                //                fontSize: 10,
                //              ),),
                //              Text("\$8,420.00",style: theme.textTheme.labelMedium?.copyWith(
                //    fontWeight: FontWeight.w800,
                //    fontSize: 15,
                //                  ),)
                //            ],
                //          ),
                //    value:_citiBankEnabled,
                //    onChanged:(value) {
                //      setState(() {
                //        _citiBankEnabled = value;
                //      });
                //    },
                //  ),
                     ],
                   ),
                 ),
               ),
                SizedBox(height: 2.h,),
               Card(
               margin: EdgeInsets.zero,
                 color: Colors.white,
                 child: Padding(
                   padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 1.5.h),
                   child: Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                           height: 4.h,width: 10.w,
                           decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                           image: DecorationImage(image: AssetImage("assets/logo/hdfbank.jpg"),fit: BoxFit.fill)
                           ),
                         ),
                         SizedBox(width: 2.5.w,),
                         Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Hdcfbank",style: theme.textTheme.labelMedium?.copyWith(
                                                 fontWeight: FontWeight.w800,
                                                 fontSize: 15,
                               ),),
                               SizedBox(height: 0.5.h,),
                               Text("Creating - \$300",style: theme.textTheme.bodySmall?.copyWith(
                                 fontSize: 10,
                               ),)
                             ],
                           ),
                         ),
                           IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz,size: 18,color: Colors.black,)),
                       ],),
                     Divider(
                       color: Colors.grey.withOpacity(0.5),
                      ),
                   Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Account Balance",style: theme.textTheme.bodySmall?.copyWith(
                               fontSize: 10,
                             ),),
                             Text("\$8,420.00",style: theme.textTheme.labelMedium?.copyWith(
                   fontWeight: FontWeight.w800,
                   fontSize: 15,
                                 ),)
                           ],
                         ),
                          Transform.scale(
                    scale:0.6,
                   child:  Switch(
                          activeColor: theme.primaryColor,
                          thumbColor:WidgetStatePropertyAll(Colors.white) ,
                          inactiveTrackColor: theme.indicatorColor,
                          value: _citiBankEnabled,
                   onChanged:(value) {
                     setState(() {
                       _citiBankEnabled = value;
                     });
                   },),),
                       ],
                     ),
                //    SwitchListTile(
                //      contentPadding: EdgeInsets.zero,
                //       inactiveTrackColor: theme.indicatorColor,
                //   inactiveThumbColor: Colors.white,
                  
                //    title:   Column(
                //            crossAxisAlignment: CrossAxisAlignment.start,
                //            children: [
                //              Text("Account Balance",style: theme.textTheme.bodySmall?.copyWith(
                //                fontSize: 10,
                //              ),),
                //              Text("\$8,420.00",style: theme.textTheme.labelMedium?.copyWith(
                //    fontWeight: FontWeight.w800,
                //    fontSize: 15,
                //                  ),)
                //            ],
                //          ),
                //    value:_citiBankEnabled,
                //    onChanged:(value) {
                //      setState(() {
                //        _citiBankEnabled = value;
                //      });
                //    },
                //  ),
                     ],
                   ),
                 ),
               ),
             ],
           ),
         )
        ],
      ),
    );
  }
}
