import 'package:flutter/material.dart';
import 'package:vision_plus/HttpServices/httpServiceSmDeliveryChallan.dart';
import 'package:vision_plus/Screens/SMDCDetailScreen/SMDCList/DeliveryChallanListViewVerticalScreen.dart';


import 'package:vision_plus/config/appConstants.dart';
import 'package:vision_plus/models/smDeliveryChallan.dart';
import 'package:vision_plus/network/httpServices.dart';

class DashBordScreen extends StatefulWidget {
  @override
  _DashBordScreenState createState() => _DashBordScreenState();
}

class _DashBordScreenState extends State<DashBordScreen> {
  HttpService httpService = HttpService();
  HttpServiceSmDeliveryChallan httpServiceSmDeliveryChallan;
 final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // callCheck();
  }

  void showMessage(String message, [MaterialColor color = Colors.red]) {
    _scaffoldKey.currentState.showSnackBar(
        new SnackBar(backgroundColor: color, content: new Text(message)));
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: AppBar(
        title: Text("DashBoard"),
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          buildCardWithIcon(
            Icons.card_giftcard,
            context,
            () async {
              await NetworkConnectivity.check().then((internet) async {
                // clear past user

                if (internet) {
                  // go to other screen

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return DeliveryChallanListViewVerticalScreen();
                      },
                    ),
                  );
                } else {
                 // show network erro
                  Scaffold.of(context).showSnackBar(new SnackBar(
                    backgroundColor: Colors.redAccent,
                content: new Text('Network is not available !!!')));

              

                }
              });
            },
            "Delivery Challan",
          ),
          buildCardWithIcon(
            Icons.supervisor_account,
            context,
            () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return CommonListViewScreen();
              // }));

              Scaffold.of(context).showSnackBar(new SnackBar(
                    backgroundColor: Color.fromRGBO(28, 192, 159, .9),
                content: new Text('Not avaiable yet.')));
            },
            "Login Page",
          ),
          buildCardWithIcon(
            Icons.widgets,
            context,
            () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return CommonListViewScreen();
              // }));
               Scaffold.of(context).showSnackBar(new SnackBar(
                    backgroundColor: Color.fromRGBO(28, 192, 159, .9),
                content: new Text('Not avaiable yet.')));
            },
            "Energy Meter Widget",
          ),
          buildCardWithIcon(
            Icons.security,
            context,
            () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return CommonListViewScreen();
              // }));
               Scaffold.of(context).showSnackBar(new SnackBar(
                    backgroundColor: Color.fromRGBO(28, 192, 159, .9),
                content: new Text('Not avaiable yet.')));
            },
            "Pass Code Page",
          ),
          buildCardWithIcon(
            Icons.widgets,
            context,
            () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return CommonListViewScreen();
              // }));
               Scaffold.of(context).showSnackBar(new SnackBar(
                    backgroundColor: Color.fromRGBO(28, 192, 159, .9),
                content: new Text('Not avaiable yet.')));
            },
            "Animated Wave Widget",
          ),
          buildCardWithIcon(
            Icons.credit_card,
            context,
            () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return CommonListViewScreen();
              // }));
               Scaffold.of(context).showSnackBar(new SnackBar(
                    backgroundColor: Color.fromRGBO(28, 192, 159, .9),
                content: new Text('Not avaiable yet.')));
            },
            "Credit Card Page",
          ),
          buildCardWithIcon(
            Icons.perm_device_information,
            context,
            () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return CommonListViewScreen();
              // }));
               Scaffold.of(context).showSnackBar(new SnackBar(
                    backgroundColor: Color.fromRGBO(28, 192, 159, .9),
                content: new Text('Not avaiable yet.')));
            },
            "Onboarding Page",
          ),
          buildCardWithIcon(
            Icons.card_travel,
            context,
            () {
              // Navigator.of(context).pushReplacement(
              //   new MaterialPageRoute(
              //     builder: (BuildContext context) {
              //       return CommonListViewScreen();
              //     },
              //   ),
              // );
               Scaffold.of(context).showSnackBar(new SnackBar(
                    backgroundColor: Color.fromRGBO(28, 192, 159, .9),
                content: new Text('Not avaiable yet.')));
            },
            "Colored Card Page",
          ),
          buildCardWithIcon(
            Icons.textsms,
            context,
            () {
              // Navigator.of(context).pushReplacement(
              //   new MaterialPageRoute(
              //     builder: (BuildContext context) {
              //       return CommonListViewScreen();
              //     },
              //   ),
              // );
               Scaffold.of(context).showSnackBar(new SnackBar(
                    backgroundColor: Color.fromRGBO(28, 192, 159, .9),
                content: new Text('Not avaiable yet.')));
            },
            "OTP Login Page",
          ),
          buildCardWithIcon(
            Icons.play_circle_filled,
            context,
            () {
              // Navigator.of(context).pushReplacement(
              //   new MaterialPageRoute(
              //     builder: (BuildContext context) {
              //       return CommonListViewScreen();
              //     },
              //   ),
              // );
               Scaffold.of(context).showSnackBar(new SnackBar(
                    backgroundColor: Color.fromRGBO(28, 192, 159, .9),
                content: new Text('Not avaiable yet.')));
            },
            "Circle Progress Bar",
          )
        ],
      ),
    );
  }

  Padding buildCardWithIcon(
      IconData icon, context, VoidCallback onTap, String pageName) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Card(
          color: AppColours.backgroundColorForCards,
          elevation: 12,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  icon,
                  size: 40,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  pageName,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                      fontWeight: FontWeight.w700),
                  softWrap: true,
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
