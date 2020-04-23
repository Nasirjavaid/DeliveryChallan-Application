import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vision_plus/config/appConstants.dart';
import 'package:vision_plus/models/smDeliveryChallan.dart';

class DcDetailScreen extends StatefulWidget {
  Items items;
  DcDetailScreen({@required this.items});

  @override
  _DcDetailScreenState createState() => _DcDetailScreenState();
}

class _DcDetailScreenState extends State<DcDetailScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  
    print(" items from id  ${widget.items.dcId}");
    print(" items from no  ${widget.items.dcNo}");
    print(" items from date  ${widget.items.dcDate}");
    // print(" items from list  ${widget.items.dcId}");
    // print(" items from list  ${widget.items.dcId}");
    // print(" items from list  ${widget.items.dcId}");
    // print(" items from list  ${widget.items.dcId}");
    // print(" items from list  ${widget.items.dcId}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColours.backgroundColorForApp,
      appBar: AppBar(
        title: Text("Delivery Challan Detail"),
        backgroundColor: AppColours.backgroundColorForCards,
      ),
      body: Container(
        child: ListView(children: <Widget>[
          deliveryChallanDetailCard(widget.items),
           shippingDetailsCard(widget.items),
          vechileCard(widget.items),
           otherInfoDetailCard(widget.items),
         


         Padding(padding: EdgeInsets.only(top:20,bottom:50,left:30,right:30),
         
         child: approveButton,
         
         )

          // Padding(
          //     padding: EdgeInsets.only(left: 30, right: 30),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: <Widget>[
          //         approveButton,
          //         SizedBox(width: 10),
          //         rejectButton,
          //       ],
          //     ))
        ]),
      ),
    );
  }

  Widget deliveryChallanDetailCard(Items items) {
    return Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Column(children: <Widget>[
          Card(
            color: Color.fromRGBO(64, 75, 96, .9),
            elevation: 12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 20, bottom: 5),
                    child: Text("Delivery Challan",
                        style: AppTypographyStyles.mainHeadingTextStyle),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 15),
                      child: Padding(
                          padding: EdgeInsets.all(0),
                          child: Row(children: <Widget>[
                            Text("DC #",
                                style: AppTypographyStyles.headingTextStyle
                                    .apply(color: Colors.white70)),
                            Spacer(),
                            items.dcNo != null
                                ? Text("${items.dcNo}",
                                    style: AppTypographyStyles.smallTextStyle
                                        .apply(color:Color.fromRGBO(28, 192, 159, .9)))
                                : Text("N/A",
                                    style: AppTypographyStyles
                                        .smallTextStyleNotVailable
                                        .apply(color: Colors.white70))
                          ]))),
                  Divider(
                    color: Colors.black12,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                      child: Row(children: <Widget>[
                        Text("DC Date",
                            style: AppTypographyStyles.headingTextStyle.apply(
                              color: Colors.white70,
                            )),
                        Spacer(),
                        items.dcDate != null
                            ? Text(DateTimeConverter.getDateAndTime( items.dcDate),
                                style: AppTypographyStyles.smallTextStyle
                                    .apply(color: Color.fromRGBO(28, 192, 159, .9)))
                            : Text("N/A",
                                style: AppTypographyStyles
                                    .smallTextStyleNotVailable
                                    .apply(color:Color.fromRGBO(28, 192, 159, .9)))
                      ])),
                  Divider(
                    color: Colors.black12,
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 15),
                      child: Row(children: <Widget>[
                        Text("Status",
                            style: AppTypographyStyles.headingTextStyle.apply(
                              color: Colors.white70,
                            )),
                        Spacer(),
                        items.status != null
                            ? Text(items.status,
                                style: AppTypographyStyles.smallTextStyle
                                    .apply(color: Color.fromRGBO(28, 192, 159, .9)))
                            : Text("N/A",
                                style: AppTypographyStyles
                                    .smallTextStyleNotVailable),
                      ])),
                ]),
          ),
        ]));
  }

  Widget shippingDetailsCard(Items items) {
    return Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 0),
        child: Column(children: <Widget>[
          Card(
            color: Color.fromRGBO(64, 75, 96, .9),
            elevation: 12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                    Widget>[
              Padding(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 5),
                child: Text("Shipping detail",
                    style: AppTypographyStyles.mainHeadingTextStyle),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 15),
                  child: Padding(
                      padding: EdgeInsets.all(0),
                      child: Row(children: <Widget>[
                        Text("Shipping address",
                            style: AppTypographyStyles.headingTextStyle
                                .apply(color: Colors.white70)),
                        Spacer(),
                        items.shipToAddress != null
                            ? Text(items.shipToAddress,
                                style: AppTypographyStyles.smallTextStyle
                                    .apply(color: Color.fromRGBO(28, 192, 159, .9)))
                            : Text("N/A",
                                style: AppTypographyStyles
                                    .smallTextStyleNotVailable),
                      ]))),
              Divider(
                color: Colors.black12,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: Row(children: <Widget>[
                    Text("Shipping phone",
                        style: AppTypographyStyles.headingTextStyle.apply(
                          color: Colors.white70,
                        )),
                    Spacer(),
                    items.shipToPhoneNo != null
                        ? Text(items.shipToPhoneNo,
                            style: AppTypographyStyles.smallTextStyle
                                .apply(color: Color.fromRGBO(28, 192, 159, .9)))
                        : Text("N/A",
                            style:
                                AppTypographyStyles.smallTextStyleNotVailable),
                  ])),
              Divider(
                color: Colors.black12,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: Row(children: <Widget>[
                    Text("Remarks",
                        style: AppTypographyStyles.headingTextStyle.apply(
                          color: Colors.white70,
                        )),
                    Spacer(),
                    items.remarks != null
                        ? Text(items.remarks,
                            style: AppTypographyStyles.smallTextStyle
                                .apply(color: Color.fromRGBO(28, 192, 159, .9)))
                        : Text("N/A",
                            style:
                                AppTypographyStyles.smallTextStyleNotVailable),
                  ])),
              Divider(
                color: Colors.black12,
              ),
              Padding(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 15),
                  child: Row(children: <Widget>[
                    Text("Creation date",
                        style: AppTypographyStyles.headingTextStyle.apply(
                          color: Colors.white70,
                        )),
                    Spacer(),
                    items.creationDate != null
                        ? Text(DateTimeConverter.getDateAndTime(items.creationDate),
                            style: AppTypographyStyles.smallTextStyle
                                .apply(color: Color.fromRGBO(28, 192, 159, .9)))
                        : Text("N/A",
                            style:
                                AppTypographyStyles.smallTextStyleNotVailable),
                  ])),
            ]),
          ),
        ]));
  }

  Widget otherInfoDetailCard(Items items) {
    return Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 0),
        child: Column(children: <Widget>[
          Card(
            color: Color.fromRGBO(64, 75, 96, .9),
            elevation: 12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                    Widget>[
              Padding(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 5),
                child: Text("Other info.",
                    style: AppTypographyStyles.mainHeadingTextStyle),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 15),
                  child: Padding(
                      padding: EdgeInsets.all(0),
                      child: Row(children: <Widget>[
                        Text("Updated by",
                            style: AppTypographyStyles.headingTextStyle
                                .apply(color: Colors.white70)),
                        Spacer(),
                        items.lastUpdatedBy != null
                            ? Text("${items.lastUpdatedBy}",
                                style: AppTypographyStyles.smallTextStyle
                                    .apply(color: Color.fromRGBO(28, 192, 159, .9)))
                            : Text("N/A",
                                style: AppTypographyStyles
                                    .smallTextStyleNotVailable),
                      ]))),
              Divider(
                color: Colors.black12,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: Row(children: <Widget>[
                    Text("Updated date",
                        style: AppTypographyStyles.headingTextStyle.apply(
                          color: Colors.white70,
                        )),
                    Spacer(),
                    items.lastUpdateDate != null
                        ? Text(DateTimeConverter.getDateAndTime(items.lastUpdateDate),
                            style: AppTypographyStyles.smallTextStyle
                                .apply(color: Color.fromRGBO(28, 192, 159, .9)))
                        : Text("N/A",
                            style:
                                AppTypographyStyles.smallTextStyleNotVailable),
                  ])),
              Divider(
                color: Colors.black12,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: Row(children: <Widget>[
                    Text("Approval date",
                        style: AppTypographyStyles.headingTextStyle.apply(
                          color: Colors.white70,
                        )),
                    Spacer(),
                    items.approvalDate != null
                        ? Text(DateTimeConverter.getDateAndTime(items.approvalDate),
                            style: AppTypographyStyles.smallTextStyle
                                .apply(color: Color.fromRGBO(28, 192, 159, .9)))
                        : Text("N/A",
                            style:
                                AppTypographyStyles.smallTextStyleNotVailable),
                  ])),
              Divider(
                color: Colors.black12,
              ),
        
            ]),
          ),
        ]));
  }

  Widget vechileCard(Items items) {
    return Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 0),
        child: Column(children: <Widget>[
          Card(
            color: Color.fromRGBO(64, 75, 96, .9),
            elevation: 12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                    Widget>[
              Padding(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 5),
                child: Text("Vehicle info.",
                    style: AppTypographyStyles.mainHeadingTextStyle),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 15,),
                  child: Row(children: <Widget>[
                    Text("Driver Name",
                        style: AppTypographyStyles.headingTextStyle.apply(
                          color: Colors.white70,
                        )),
                    Spacer(),
                    items.driverName != null
                        ? Text(items.driverName,
                            style: AppTypographyStyles.smallTextStyle
                                .apply(color: Color.fromRGBO(28, 192, 159, .9)))
                        : Text("N/A",
                            style:
                                AppTypographyStyles.smallTextStyleNotVailable),
                  ])),
              Divider(
                color: Colors.black12,
              ),

                    Padding(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 5,),
                  child: Row(children: <Widget>[
                    Text("Vehicle type",
                        style: AppTypographyStyles.headingTextStyle.apply(
                          color: Colors.white70,
                        )),
                    Spacer(),
                    items.vehicleType != null
                        ? Text(items.vehicleType,
                            style: AppTypographyStyles.smallTextStyle
                                .apply(color: Color.fromRGBO(28, 192, 159, .9)))
                        : Text("N/A",
                            style:
                                AppTypographyStyles.smallTextStyleNotVailable),
                  ])),

                    Divider(
                color: Colors.black12,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 5, right: 5, top: 5),
                  child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Row(children: <Widget>[
                        Text("Vehicle no.",
                            style: AppTypographyStyles.headingTextStyle
                                .apply(color: Colors.white70)),
                        Spacer(),
                        items.vehicleNo != null
                            ? Text(items.vehicleNo,
                                style: AppTypographyStyles.smallTextStyle
                                    .apply(color: Color.fromRGBO(28, 192, 159, .9)))
                            : Text("N/A",
                                style: AppTypographyStyles
                                    .smallTextStyleNotVailable),
                      ]))),
              Divider(
                color: Colors.black12,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: Row(children: <Widget>[
                    Text("Builty no.",
                        style: AppTypographyStyles.headingTextStyle.apply(
                          color: Colors.white70,
                        )),
                    Spacer(),
                    items.builtyNo != null
                        ? Text(items.builtyNo,
                            style: AppTypographyStyles.smallTextStyle
                                .apply(color: Color.fromRGBO(28, 192, 159, .9)))
                        : Text("N/A",
                            style:
                                AppTypographyStyles.smallTextStyleNotVailable),
                  ])),
              Divider(
                color: Colors.black12,
              ),
              Padding(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                  child: Row(children: <Widget>[
                    Text("Transport company",
                        style: AppTypographyStyles.headingTextStyle.apply(
                          color: Colors.white70,
                        )),
                    Spacer(),
                    items.transComp != null
                        ? Text(items.transComp,
                            style: AppTypographyStyles.smallTextStyle
                                .apply(color: Color.fromRGBO(28, 192, 159, .9)))
                        : Text("N/A",
                            style:
                                AppTypographyStyles.smallTextStyleNotVailable),
                  ])),
                   Divider(
                color: Colors.black12,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: Row(children: <Widget>[
                    Text("Container",
                        style: AppTypographyStyles.headingTextStyle.apply(
                          color: Colors.white70,
                        )),
                    Spacer(),
                    items.container != null
                        ? Text(items.container,
                            style: AppTypographyStyles.smallTextStyle
                                .apply(color: Color.fromRGBO(28, 192, 159, .9)))
                        : Text("N/A",
                            style:
                                AppTypographyStyles.smallTextStyleNotVailable),
                  ])),
              Divider(
                color: Colors.black12,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: Row(children: <Widget>[
                    Text("Seal 1",
                        style: AppTypographyStyles.headingTextStyle.apply(
                          color: Colors.white70,
                        )),
                    Spacer(),
                    items.seal1 != null
                        ? Text(items.seal1,
                            style: AppTypographyStyles.smallTextStyle
                                .apply(color: Color.fromRGBO(28, 192, 159, .9)))
                        : Text("N/A",
                            style:
                                AppTypographyStyles.smallTextStyleNotVailable),
                  ])),
              Divider(
                color: Colors.black12,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: Row(children: <Widget>[
                    Text("Seal 2",
                        style: AppTypographyStyles.headingTextStyle.apply(
                          color: Colors.white70,
                        )),
                    Spacer(),
                    items.seal2 != null
                        ? Text(items.seal2,
                            style: AppTypographyStyles.smallTextStyle
                                .apply(color: Color.fromRGBO(28, 192, 159, .9)))
                        : Text("N/A",
                            style:
                                AppTypographyStyles.smallTextStyleNotVailable),
                  ])),
              Divider(
                color: Colors.black12,
              ),
            ]),
          ),
        ]));
  }

  final approveButton =  ButtonTheme(
    height: 40,
    minWidth: 70,
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    child: RaisedButton(
      elevation: 19,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      onPressed: () {},
      padding: EdgeInsets.all(8),
      color:  Colors.white,
      child: Text('Approve',
          style: TextStyle(
              color: Colors.black54, fontSize: 12, fontWeight: FontWeight.w700)),
    ),
  );

  final rejectButton = ButtonTheme(
    height: 37,
    minWidth: 110,
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    child: RaisedButton(
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      onPressed: () {},
      padding: EdgeInsets.all(8),
      color: Colors.red,
      child: Text('Reject',
          style: TextStyle(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700)),
    ),
  );
}
