import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vision_plus/HttpServices/HttpServiceSmDeliveryChallan.dart';
import 'package:vision_plus/Widgets/CommonWigets/verticalListViewCard.dart';
import 'package:vision_plus/models/smDeliveryChallan.dart';

class DeliveryChallanListViewVerticalScreen extends StatefulWidget {
  @override
  _DeliveryChallanListViewVerticalScreenState createState() => _DeliveryChallanListViewVerticalScreenState();
}

class _DeliveryChallanListViewVerticalScreenState extends State<DeliveryChallanListViewVerticalScreen> {
  ScrollController lazyListscrollController = ScrollController();

  HttpServiceSmDeliveryChallan httpServiceSmDeliveryChallan =
      HttpServiceSmDeliveryChallan();


  int maxItems = 25;
  int offSet = 1;
  List<Items> globalItemsList;
  Future myFuture;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

        
    myFuture = getData();
    lazyListscrollController.addListener(() {
      if (lazyListscrollController.position.pixels ==
          lazyListscrollController.position.maxScrollExtent) {
        myFuture = getData();
      }
    });
    
  }

   Future<bool> checkNetwork() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }


  

  Future<List<Items>> getData() async {
    try {globalItemsList = await httpServiceSmDeliveryChallan
        .getSMDeliveryChallanDetails(offSet, maxItems);
    setState(() {
      //offSet += 1;
      maxItems += 25;
      globalItemsList.length;

     // print("List Size in main ${globalItemsList.length}");

    });
    return globalItemsList;}
    catch(e)
    {
      print("Call from Delivery Challan List about empty list exception $e");

      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: AppBar(
        title: Text("Delivery Challan List"),
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      ),

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        // We will fetch data into UI using Future Builder
        child:   FutureBuilder(
          future: myFuture,
          builder: (BuildContext context, globalItemsList) {
          
            print("snapshot: ${globalItemsList.data}");

            
            if (globalItemsList.data == null) {
              return Center(
                child: SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              );
              
            } 
            else if(globalItemsList.hasError){

              return Center(child: Text("Error"),);
            }
            else {
              return ListView.builder(
                controller: lazyListscrollController,
                itemCount: globalItemsList.data.length,
                
                itemBuilder: (BuildContext context, int index) {
                  Items thisListItems = globalItemsList
                      .data[index];
                  // (snapshot.data[snapshot.data.length - index].title);
                  if (index == globalItemsList.data.length - 1) {
                    print("length matched");
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SizedBox(
                            width: 18,
                            height: 18,
                            child: CircularProgressIndicator(
                              strokeWidth: 2.5,
                            ),
                          ),

                        ],
                      ),
                    );
                  }
                  else{

                    
                          return VericalListViewCard(
                    items: thisListItems,

                   );
                  }               
                },
                
              );
            }
          },
        ),
      ),
      // body: Center(
      //   child: VerticalListView(),
      // ),
    );
  }

  
}
