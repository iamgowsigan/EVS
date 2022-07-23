import 'package:evs/config.dart';
import 'package:evs/mainPage.dart';
import 'package:evs/secondPage.dart';
import 'package:evs/userScreen.dart';
import 'package:flutter/material.dart';

class bottomNavigationBar extends StatefulWidget {
  BuildContext mcontext;
  bool ishome;
  int order;
  bottomNavigationBar(
      {Key? key,
      required this.ishome,
      required this.mcontext,
      required this.order})
      : super(key: key);

  @override
  _bottomNavigationBarState createState() {
    return _bottomNavigationBarState();
  }
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  String UserId = '';
  bool showProgress = false;
  late BuildContext mcontext;
  bool ishome = false;
  int order = 0;
  String skipSignup = '';

  @override
  void initState() {
    mcontext = widget.mcontext;
    ishome = widget.ishome;
    order = widget.order;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return IntrinsicHeight(
      child: Container(
        decoration: BoxDecoration(),
        child: SafeArea(
            child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
            ),
            Container(
              color: themeColor,
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                //children inside bottom appbar
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        if (ishome == true) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => mainPage()));
                        } else {
                          Navigator.of(mcontext).pop();
                        }
                      },
                      child: bottomMenuItem(
                          'Home',
                          order == 1 ? Icons.home : Icons.home_outlined,
                          order == 1 ? Colors.black87 : Colors.black87,
                          1)),
                  GestureDetector(
                      onTap: () {
                        if (ishome == true) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => secondPage()));
                        } else {
                          if (order != 2)
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => secondPage()));
                        }
                      },
                      child: bottomMenuItem(
                          'Chat',
                          order == 2 ? Icons.widgets : Icons.widgets_outlined,
                          order == 2 ? Colors.black87 : Colors.black54,
                          2)),
                  GestureDetector(
                      onTap: () {
                        if (ishome == true) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => userScreen()));
                        } else {
                          if (order != 3)
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => userScreen()));
                        }
                      },
                      child: bottomMenuItem(
                          'You',
                          order == 3 ? Icons.person : Icons.person_outline,
                          order == 3 ? Colors.black87 : Colors.black54,
                          3)),
                ],
              ),
            ),
          ],
        )),
      ),
    );
    // return ScrollToHide(child: Container(
    //   decoration: BoxDecoration(
    //     color: fc_bg,
    //
    //   ),
    //   child: SafeArea(
    //     child: Column(
    //       children: [
    //         Container(
    //           color: fc_6,
    //           width: Width(context),
    //           height: 1,
    //
    //           margin: EdgeInsets.fromLTRB(0, 0, 0, sy(3)),
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
    //           child: Row(
    //
    //             //children inside bottom appbar
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: <Widget>[
    //               GestureDetector(
    //                   onTap: (){
    //                     if(ishome==true){
    //                       //  Navigator.pushReplacement(mcontext, OpenScreen(widget: UserProfile()));
    //                     }else{
    //                       Navigator.of(mcontext).pop();
    //                     }
    //
    //                   },
    //                   child:bottomMenuItem('Home',  order==1?Icons.home:Icons.home_outlined, order==1?fc_1:fc_3!,1)
    //               ),
    //               GestureDetector(
    //                   onTap: (){
    //                     if(ishome==true){
    //                       Navigator.push(mcontext, OpenScreen(widget: CategoryScreen()));
    //                     }else{
    //                       if(order!=2) Navigator.pushReplacement(mcontext, OpenScreen(widget: CategoryScreen()));
    //                     }
    //                   },
    //                   child: bottomMenuItem('Category', order==2?Icons.widgets:Icons.widgets_outlined, order==2?fc_1:fc_3!,2)
    //
    //               ),
    //               GestureDetector(
    //                   onTap: (){
    //
    //                     if(ishome==true){
    //                       Navigator.push(mcontext, OpenScreen(widget: BidScreen()));
    //                     }else{
    //                       if(order!=3) Navigator.pushReplacement(mcontext, OpenScreen(widget: BidScreen()));
    //                     }
    //
    //
    //
    //                   },
    //                   child:bottomMenuItem('Bid',order==3?Icons.business_center:Icons.business_center_outlined, order==3?fc_1:fc_3!,3)
    //               ),
    //               GestureDetector(
    //                   onTap: (){
    //
    //                     apiTest(UserId+'-UserId');
    //                     if (skipSignup == '1' || UserId == '0') {
    //                       Navigator.push(context, OpenScreen(widget: CartScreen()));
    //                     } else {
    //
    //                       if(ishome==true){
    //                         Navigator.push(mcontext, OpenScreen(widget: CartScreen()));
    //                       }else{
    //                         if(order!=4) Navigator.pushReplacement(mcontext, OpenScreen(widget: CartScreen()));
    //                       }
    //                     }
    //
    //
    //
    //                   },
    //                   child: bottomMenuItem('Bag',order==4?Icons.shopping_bag:Icons.shopping_bag_outlined, order==4?fc_1:fc_3!,4)),
    //               GestureDetector(
    //                   onTap: (){
    //
    //                     if(ishome==true){
    //                       Navigator.push(mcontext, OpenScreen(widget: ProfileScreen()));
    //                     }else{
    //                       if(order!=5) Navigator.pushReplacement(mcontext, OpenScreen(widget: ProfileScreen()));
    //                     }
    //
    //
    //                   },
    //                   child:bottomMenuItem('You',order==5?Icons.person:Icons.person_outline, order==5?fc_1:fc_3!,5)
    //               ),
    //             ],
    //           ),
    //         ),
    //       ],
    //     )
    //   ),
    // ), controller: widget.controller,revese: true,);
  }

  bottomMenuItem(String label, IconData icon, Color color, int index) {
    return Container(
      //height: sy(30),
      width: MediaQuery.of(context).size.width * 0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Container(
          //   width: MediaQuery.of(context).size.width * 0.15,
          //   height: 3,
          //   decoration: decoration_round(
          //       (index == order) ? Config.themeData : Colors.transparent,
          //       0,
          //       0,
          //       10,
          //       10),
          // ),
          // SizedBox(
          //   height: 4,
          // ),
          Icon(
            icon,
            size: 25,
            color: color,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: color,
            ),
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
